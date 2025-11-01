# Multi-stage Dockerfile for Hydra Node
# Stage 1: Build the Hydra node from source using Nix
FROM nixos/nix:2.18.1 AS builder

# Enable flakes and set up Nix configuration
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf && \
    echo "extra-substituters = https://cache.iog.io https://cardano-scaling.cachix.org" >> /etc/nix/nix.conf && \
    echo "extra-trusted-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= cardano-scaling.cachix.org-1:QNK4nFrowZ/aIJMCBsE35m+O70fV6eewsBNdQnCSMKA=" >> /etc/nix/nix.conf && \
    echo "allow-import-from-derivation = true" >> /etc/nix/nix.conf

# Copy source code
WORKDIR /build
COPY . .

# Build the static hydra-node binary for Linux
# This will use the Nix cache when available
RUN nix build .#hydra-node-static --no-link --print-out-paths > /tmp/hydra-path && \
    cp -r $(cat /tmp/hydra-path)/* /tmp/hydra-node-static/

# Stage 2: Create minimal runtime image
FROM ubuntu:22.04

# Install runtime dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        jq \
    && rm -rf /var/lib/apt/lists/*

# Copy the hydra-node binary from builder
COPY --from=builder /tmp/hydra-node-static/bin/hydra-node /usr/local/bin/hydra-node

# Create non-root user for running the node
RUN useradd -m -u 1000 -s /bin/bash hydra

# Set up working directory
WORKDIR /data
RUN chown hydra:hydra /data

# Switch to non-root user
USER hydra

# Default ports used by Hydra node
# API port
EXPOSE 4001
# Metrics port
EXPOSE 6001
# Node-to-node communication port
EXPOSE 5001

# Set entrypoint to hydra-node binary
ENTRYPOINT ["hydra-node"]

# Default command shows help
CMD ["--help"]
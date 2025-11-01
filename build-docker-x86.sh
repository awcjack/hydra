#!/bin/bash
set -e

# Script to build x86_64 Linux Docker image for Hydra Node
# This script uses Docker buildx for cross-platform building

echo "Building Hydra Node Docker image for x86_64 Linux..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed"
    exit 1
fi

# Setup buildx if not already configured
if ! docker buildx ls | grep -q "hydra-builder"; then
    echo "Creating buildx builder for multi-platform builds..."
    docker buildx create --name hydra-builder --use
    docker buildx inspect hydra-builder --bootstrap
fi

# Use the buildx builder
docker buildx use hydra-builder

# Build options
IMAGE_NAME="hydra-node"
IMAGE_TAG="latest"
PLATFORM="linux/amd64"  # x86_64 Linux

echo "Building for platform: $PLATFORM"

# Option 1: Build using the Nix-based Dockerfile (slower but self-contained)
echo "Option 1: Building with Nix (self-contained, may take longer)..."
docker buildx build \
    --platform "$PLATFORM" \
    --tag "$IMAGE_NAME:$IMAGE_TAG-nix" \
    --file Dockerfile \
    --load \
    . || echo "Nix build failed, this is expected if you don't have x86_64 emulation"

# Option 2: Build using pre-built binary (requires nix build first)
if [ -d "result" ]; then
    echo "Option 2: Building with pre-built binary from ./result..."
    docker buildx build \
        --platform "$PLATFORM" \
        --tag "$IMAGE_NAME:$IMAGE_TAG" \
        --file Dockerfile.simple \
        --load \
        .

    echo "Successfully built $IMAGE_NAME:$IMAGE_TAG for $PLATFORM"
    echo ""
    echo "To run the container:"
    echo "  docker run --rm $IMAGE_NAME:$IMAGE_TAG --help"
    echo ""
    echo "To save the image to a tar file for deployment:"
    echo "  docker save $IMAGE_NAME:$IMAGE_TAG | gzip > hydra-node-x86_64.tar.gz"
else
    echo "Warning: ./result directory not found. Please run 'nix build .#hydra-node' first"
    echo "Note: The macOS-built binary won't work in a Linux container"
    echo ""
    echo "Alternative: Use the Nix-based Dockerfile which builds from source"
fi

echo ""
echo "To push to a registry:"
echo "  docker tag $IMAGE_NAME:$IMAGE_TAG your-registry/$IMAGE_NAME:$IMAGE_TAG"
echo "  docker push your-registry/$IMAGE_NAME:$IMAGE_TAG"
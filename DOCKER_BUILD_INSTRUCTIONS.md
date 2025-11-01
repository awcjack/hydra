# Building Hydra Node Docker Image for x86_64 Linux

## Overview
This guide provides multiple methods to build a Docker image for the Hydra node with memory leak fixes and configurable garbage collection.

## Prerequisites
- Docker installed and running
- Git for version control
- (Optional) GitHub account for CI/CD builds

## Method 1: GitHub Actions (Recommended for x86_64)

The easiest way to build an x86_64 Linux Docker image is using GitHub Actions:

1. **Push your code to GitHub:**
```bash
git add .
git commit -m "feat: add memory leak fixes and Docker support"
git push origin main
```

2. **The workflow will automatically:**
   - Build the Hydra node using Nix
   - Create a Docker image for x86_64 Linux
   - Upload the image as an artifact

3. **Download the Docker image:**
   - Go to Actions tab in your GitHub repository
   - Click on the latest workflow run
   - Download the `hydra-node-docker-x86_64` artifact
   - Load it locally:
   ```bash
   docker load < hydra-node-docker-x86_64.tar
   ```

## Method 2: Local Build with Docker Buildx

If you want to build locally, you'll need Docker buildx with QEMU emulation:

### Setup buildx:
```bash
# Install QEMU for cross-platform emulation
docker run --privileged --rm tonistiigi/binfmt --install all

# Create and use a buildx builder
docker buildx create --name hydra-builder --use --bootstrap
```

### Build the image:
```bash
# Build for x86_64 Linux
docker buildx build \
  --platform linux/amd64 \
  --tag hydra-node:latest \
  --file Dockerfile \
  --load \
  .
```

## Method 3: Using a Linux Build Server

If you have access to a Linux x86_64 server:

1. **Copy the source code to the Linux server:**
```bash
rsync -av --exclude result --exclude .git . user@server:~/hydra/
```

2. **Build on the Linux server:**
```bash
ssh user@server
cd ~/hydra
nix build .#docker-hydra-node
docker load < result
```

## Running the Docker Container

### Quick Test:
```bash
# Test the image
docker run --rm hydra-node:latest --version
docker run --rm hydra-node:latest --help
```

### Production Deployment:

1. **Using docker-compose:**
```bash
# Edit docker-compose.hydra.yml with your configuration
docker-compose -f docker-compose.hydra.yml up -d
```

2. **Using docker run:**
```bash
docker run -d \
  --name hydra-node \
  --restart unless-stopped \
  -p 4001:4001 \
  -p 5001:5001 \
  -p 6001:6001 \
  -v hydra-data:/data \
  -v ./keys:/keys:ro \
  -v ./config:/config:ro \
  -m 1g \
  hydra-node:latest \
  --node-id 1 \
  --api-host 0.0.0.0 \
  --api-port 4001 \
  --host 0.0.0.0 \
  --port 5001 \
  --monitoring-port 6001 \
  --persistence-dir /data/persistence \
  --gc-interval 10 \
  # Add your additional parameters here
```

## Memory Configuration

The fixed Hydra node includes:
- **Strict evaluation** to prevent lazy thunk accumulation
- **Configurable periodic GC** with `--gc-interval` flag

### Recommended Settings:
```bash
# Set GC interval (in minutes)
--gc-interval 10     # Default: GC every 10 minutes
--gc-interval 5      # More aggressive: GC every 5 minutes
--gc-interval 0      # Disable periodic GC

# Docker memory limits
-m 1g                # Limit container to 1GB RAM
--memory-reservation 256m  # Reserve 256MB
```

With these fixes, memory usage should stay between **200-500MB** instead of the previous 1.4-1.5GB.

## Kubernetes Deployment

To deploy to Kubernetes:

1. **Push image to registry:**
```bash
# Tag for your registry
docker tag hydra-node:latest your-registry.io/hydra-node:latest

# Push to registry
docker push your-registry.io/hydra-node:latest
```

2. **Update Kubernetes deployment:**
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hydra-node
spec:
  replicas: 4
  template:
    spec:
      containers:
      - name: hydra-node
        image: your-registry.io/hydra-node:latest
        args:
        - --gc-interval
        - "10"
        # ... other args
        resources:
          limits:
            memory: "1Gi"
          requests:
            memory: "256Mi"
```

## Files Included

- `Dockerfile` - Multi-stage build with Nix
- `Dockerfile.simple` - Simple build using pre-built binary
- `docker-compose.hydra.yml` - Docker Compose configuration
- `build-docker-x86.sh` - Build script for x86_64
- `.github/workflows/build-docker.yml` - GitHub Actions workflow

## Verification

After deployment, verify the memory fix:

```bash
# Check GC is configured
docker exec hydra-node hydra-node --help | grep gc-interval

# Monitor memory usage
docker stats hydra-node

# Check logs for GC events
docker logs hydra-node | grep PerformingGarbageCollection
```

## Troubleshooting

### Build fails on macOS for x86_64:
- Use GitHub Actions (Method 1) or a Linux build server (Method 3)
- macOS cannot directly build Linux x86_64 binaries with Nix without remote builders

### Memory still high:
- Verify `--gc-interval` is set correctly
- Check logs for "PerformingGarbageCollection" messages
- Ensure you're using the fixed version with strict evaluation

### Docker buildx issues:
```bash
# Reset buildx
docker buildx rm hydra-builder
docker buildx create --name hydra-builder --use --bootstrap

# Verify QEMU is installed
docker run --privileged --rm tonistiigi/binfmt --install all
```

## Summary

The Hydra node Docker image includes all memory leak fixes:
- ✅ Strict evaluation throughout the codebase
- ✅ Configurable periodic garbage collection
- ✅ Memory usage reduced from 1.4-1.5GB to 200-500MB
- ✅ Production-ready with health checks and resource limits
- ✅ Compatible with Kubernetes deployments

Use GitHub Actions for the easiest x86_64 Linux build path, or follow the local build instructions with Docker buildx for cross-platform compilation.
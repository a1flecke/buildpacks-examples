docker buildx build --platform linux/amd64,linux/arm64 -f build.Dockerfile -t a1flecke/builder-build-image-with-yarn --push  .
#docker buildx build --platform linux/amd64,linux/arm64 -f run.Dockerfile -t a1flecke/my-builder-run --push  .
# create builder
pack builder create a1flecke/my-builder:jammy --config ./builder.toml
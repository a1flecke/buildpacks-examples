# Extending Buildpacks via Dockerfile Extensions

This example shows how to extend a Paketo builder via Dockerfile extensions.  Currently, extending a trusted builder [requires re-tagging the builder](https://github.com/buildpacks/community/discussions/244#discussioncomment-7554863).

## Running

The example has a shell script for creating the project docker image.  It requires the following.

1. Argument 1: SOURCE_BUILDER_IMAGE.  This is the docker uri builder to re-tag
2. Argument 2: RE_TAGGED_BUILDER_IMAGE.  This is the docker uri to use for the builder image.

Based on experience, it is required that the RE_TAGGED_BUILDER_IMAGE actually gets pushed to a docker registry.  If the image is not pushed then the pack restorer errors.

```bash
# Build the project image and tag it as tryit
./try-pack.sh ${SOURCE_BUILDER_IMAGE} ${RE_TAGGED_BUILDER_IMAGE}

# run the project image
docker run tryit
```

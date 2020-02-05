# Build Info

## Base Brotli image

The base Brotli docker image is built using `Dockerfile.brotli`. 

    docker build --rm -f Dockerfile.brotli -t <image-name-here> .

A built version of this is available publically on [DockerHub](https://hub.docker.com/repository/docker/charlesworth/brotli)

## Testing

A [test repository](https://github.com/Charlesworth/brotli-github-action-test) exists that uses the action to make sure it builds.
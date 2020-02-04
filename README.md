# brotli-github-action

GitHub action to perform brotli compression

## TODO

- Find a effective way of getting the directory in/out of the container
- Add checking to shell script if none of a file type are present
- Stretch: add custom file types

## Run cmds

    docker build --rm -f Dockerfile -t brotlitest .
    docker run --mount type=bind,source="$(pwd)"/build,target=/build -it brotlitest

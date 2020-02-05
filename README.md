# compress-action

GitHub action to perform [Brotli](https://github.com/google/brotli) compression on .js, .html and .css files, perfect for making your web content smaller to download.

`compress-action` will brotli compress everything in the target directory and it's sub directories, also leaving the original uncompressed file in place.

## Inputs

### `target-directory`

**Optional** The directory in the action workspace to recusively compress. Defaults to the root workspace directory.

## Example usage

With a target:

    steps:
      - name: Checkout Repo
        uses: actions/checkout@master

      - name: Brotli compress the html, css and js files in the "build" directory
        id: brotli
        uses: charlesworth/compress-action@1.0
        with:
          target-directory: 'build'

Without a target (target the root of the workspace):

    steps:
      - name: Checkout Repo
        uses: actions/checkout@master

      - name: Brotli compress the html, css and js files in repository
        id: brotli
        uses: charlesworth/compress-action@1.0

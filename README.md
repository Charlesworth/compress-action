# brotli-github-action

GitHub action to perform brotli compression

## Inputs

### `target-directory`

**Optional** The directory in the action workspace to recusively compress. Defaults to the root workspace directory.

## Example usage

    - name: Brotli compress the "build" directory
      id: brotli
      uses: charlesworth/brotli-github-action@1.0
      with:
        target-directory: 'build'

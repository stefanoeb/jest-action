# GitHub Jest runner

This action executes Jest test runner without any previous action/build step or Docker required.

## Prerequisites

### Jest
You must have the Jest running locally for the action to execute.
More info [on the Jest getting started guide](https://jestjs.io/docs/en/getting-started)

## Usage

With the latest version of GitHub actions, create a `.github/workflow/test.yml` file:

```
name: Test

on: [push]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: stefanoeb/jest-action@master
```

If there is no previous step installing the necessary modules, this action will execute a `yarn install` or `npm install` automatically.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

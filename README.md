# GitHub Jest runner

This action executes Jest test runner without any previous action/build step or Docker required.

## Prerequisites

### Jest
You must have the Jest running locally for the action to execute.
More info [on the Jest getting started guide](https://jestjs.io/docs/en/getting-started)

## Usage

Add to your `main.yml` file or create a new file named `.github/workflows/test.yml` and add:

```yml

name: Tests

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Run Jest
      uses: stefanoeb/jest-action@1.0.3
```

You can also pass custom args to jest through the `with:` parameter:

```yml

name: Tests

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Run Jest
      uses: stefanoeb/jest-action@1.0.3
      with:
        jestArgs: path/to/my.test.js
```


If there is no previous step installing the necessary modules, this action will execute a `yarn install` or `npm install` automatically.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

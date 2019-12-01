# GitHub Jest runner

This action executes Jest test runner without any previous action/build step or Docker required.

## Prerequisites

### Jest
You must have the Jest running locally for the action to execute.
More info [on the Jest getting started guide](https://jestjs.io/docs/en/getting-started)

## Usage

Add any of the examples below to your workflow file in `.github/main.workflow`

This is the simplest example to get it running:
```
workflow "New workflow" {
  on = "push"
  resolves = ["Jest"]
}

action "Jest" {
  uses = "stefanoeb/jest-action@master"
}
```

By default it will run Jest on all the test files in the project. But you can also specify a glob of files on the `args`, just like on the Jest CLI, as well as options:
```
workflow "New workflow" {
  on = "push"
  resolves = ["Jest"]
}

action "Jest" {
  uses = "stefanoeb/jest-action@master"
  args = "**.test.js --ci"
}
```

If there is no previous step installing the necessary modules, this action will execute a `yarn install` or `npm install` automatically.

Alternative: in a `.github/workflow/test.yml` file

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

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

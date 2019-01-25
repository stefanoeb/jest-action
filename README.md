# GitHub ESLint runner

This action executes Jest test runner without any previous action/build step or Docker required.

## Prerequisites

### Jest
You must have the ESLint running locally for the action to execute. It will use the same rules as you do locally.
More info [on the ESLint getting started guide](https://eslint.org/docs/user-guide/getting-started#installation-and-usage)

## Usage

Add any of the examples below to your workflow file in `.github/main.workflow`

This is the simplest example to get it running:
```
workflow "New workflow" {
  on = "push"
  resolves = ["ESLint"]
}

action "ESLint" {
  uses = "stefanoeb/eslint-action@master"
}
```

By default it will run ESLint through all the files in the project. But you can also specify a glob of files on the `args`, just like ESLint:
```
workflow "New workflow" {
  on = "push"
  resolves = ["ESLint"]
}

action "ESLint" {
  uses = "stefanoeb/eslint-action@master"
  args = "index.js src/**.js"
}
```

If there is no previous step installing the necessary modules, this action will execute a `yarn install` or `npm install` automatically.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

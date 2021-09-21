<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `provision/generator/README.yaml`
  ** 2) Run`task readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

 <!-- Space: ZSH-ISSUES -->

 <!-- Title: readme -->

[![Latest Release](https://img.shields.io/github/release/hadenlabs/zsh-issues)](https://github.com/hadenlabs/zsh-issues/releases) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/zsh-issues/lint-code)](https://github.com/hadenlabs/zsh-issues/actions?workflow=lint-code) [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org) [![KeepAChangelog](https://img.shields.io/badge/Keep%20A%20Changelog-1.0.0-%23E05735)](https://keepachangelog.com)

# zsh-issues

zsh-issues for zsh plugin

## Requirements

This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

- [zsh-core](https://github.com/hadenlabs/zsh-core)

* [taskfile](https://github.com/go-task/task)

## Installation

### [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) users

If you're using [oh-my-zsh](https://gitub.com/robbyrussell/oh-my-zsh), install this plugin by doing the following:

1.  Go to your oh-my-zsh custom plugins directory -`cd ~/.oh-my-zsh/custom/plugins`
2.  Clone the plugin `bash git clone https://github.com/hadenlabs/zsh-issues`bash
3.  Edit your `.zshrc` and add `plugins=( ... zsh-issues )` to your list of plugins
4.  Open a new terminal and enjoy!

### [antigen](https://github.com/zsh-users/antigen) users

If you're using [Antigen](https://github.com/zsh-users/antigen), install this plugin by doing the following:

1.  Add `antigen bundle hadenlabs/zsh-issues` to your `.zshrc` where you're adding your other plugins.
2.  Either open a new terminal to force zsh to load the new plugin, or run `antigen bundle hadenlabs/zsh-issues` in a running zsh session.
3.  Enjoy!

### [antibody](https://github.com/getantibody/antibody) users

If you're using [Antibody](https://github.com/getantibody/antibody), install this plugin by doing the following:

1.  Add :

```{.sourceCode .bash}
     antibody bundle hadenlabs/zsh-issues
```

to your `.zshrc` where you're adding your other plugins.

2.  Either open a new terminal to force zsh to load the new plugin, or run `antibody bundle hadenlabs/zsh-issues` in a running zsh session.
3.  Enjoy!

## Functions

Zsh issues includes a small utility `issues` to fetch and install new packages.

#### `issues::install`

Install issues.

#### `issues::load`

Load path issues.

#### `issues::list`

Show issues.

#### `issues::search` `task`

Search task.

#### `issues::task::create` `task`

Create issue.

#### `issues::task::feat` `task`

Create issue type feature.

#### `issues::task::fix` `task`

Create issue type fix.

#### `issues::task::perf` `task`

Create issue type perf.

#### `issues::task::docs` `task`

Create issue type docs.

#### `issues::task::refactor` `task`

Create issue type refactor.

#### `issues::task::chore` `task`

Create issue type chore.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/zsh-issues/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/hadenlabs/zsh-issues/issues) to report any bugs or file feature requests.

### Development

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork

5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!

## Module Versioning

This Module follows the principles of [Semantic Versioning (SemVer)](https://semver.org/).

Using the given version number of `MAJOR.MINOR.PATCH`, we apply the following constructs:

1. Use the `MAJOR` version for incompatible changes.
1. Use the `MINOR` version when adding functionality in a backwards compatible manner.
1. Use the `PATCH` version when introducing backwards compatible bug fixes.

### Backwards compatibility in `0.0.z` and `0.y.z` version

- In the context of initial development, backwards compatibility in versions `0.0.z` is **not guaranteed** when `z` is increased. (Initial development)
- In the context of pre-release, backwards compatibility in versions `0.y.z` is **not guaranteed** when `y` is increased. (Pre-release)

## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).

## Don't forget to 🌟 Star 🌟 the repo if you like zsh-issues

[Your feedback is appreciated](https://github.com/hadenlabs/zsh-issues/issues)

<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `provision/generator/README.yaml`
  ** 2) Run`task readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

[![Latest Release](https://img.shields.io/github/release/hadenlabs/zsh-issues)](https://github.com/hadenlabs/zsh-issues/releases) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/zsh-issues/lint-code)](https://github.com/hadenlabs/zsh-issues/actions?workflow=lint-code) [![CI](https://img.shields.io/github/workflow/status/hadenlabs/zsh-issues/ci)](https://github.com/hadenlabs/zsh-issues/actions?workflow=ci) [![Test](https://img.shields.io/github/workflow/status/hadenlabs/zsh-issues/test)](https://github.com/hadenlabs/zsh-issues/actions?workflow=test) [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org) [![KeepAChangelog](https://img.shields.io/badge/changelog-Keep%20a%20Changelog%20v1.0.0-orange)](https://keepachangelog.com)

# zsh-issues

zsh-issues for project

## Requirements

This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

- [zsh-core](https://github.com/hadenlabs/zsh-core)
- [gomplate](https://github.com/hairyhenderson/gomplate)
- [python](https://www.python.org)
- [taskfile](https://github.com/go-task/task)

## Installation

<!-- Space: ZshIssues -->
<!-- Parent: Project -->
<!-- Title: Project Installation Oh-My-Zsh -->

<!-- Label: ZshIssues -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Label: Oh-My-Zsh -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) users

If you're using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), install this plugin by doing the following:

1.  Go to your oh-my-zsh custom plugins directory -`cd ~/.oh-my-zsh/custom/plugins`
2.  Clone the plugin `bash git clone https://github.com/hadenlabs/zsh-issues`bash
3.  Edit your `.zshrc` and add `plugins=( ... zsh-issues )` to your list of plugins
4.  Open a new terminal and enjoy!
    <!-- Space: ZshIssues -->
    <!-- Parent: Project -->
    <!-- Title: Project Installation Antigen -->

<!-- Label: ZshIssues -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Label: Antigen -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [antigen](https://github.com/zsh-users/antigen) users

If you're using [Antigen](https://github.com/zsh-users/antigen), install this plugin by doing the following:

1.  Add `antigen bundle hadenlabs/zsh-issues` to your `.zshrc` where you're adding your other plugins.
2.  Either open a new terminal to force zsh to load the new plugin, or run `antigen bundle hadenlabs/zsh-issues` in a running zsh session.
3.  Enjoy!
    <!-- Space: ZshIssues -->
    <!-- Parent: Project -->
    <!-- Title: Project Installation Antibody -->

<!-- Label: ZshIssues -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [antibody](https://github.com/getantibody/antibody) users

If you're using [Antibody](https://github.com/getantibody/antibody), install this plugin by doing the following:

1.  Add :

```{.sourceCode .bash}
antibody bundle hadenlabs/zsh-issues
```

to your `.zshrc` where you're adding your other plugins.

2.  Either open a new terminal to force zsh to load the new plugin, or run `antibody bundle hadenlabs/zsh-issues` in a running zsh session.
3.  Enjoy!

## Usage

# How to use this project

 <!-- Space: ZshIssues -->
<!-- Parent: Project -->
<!-- Title: Functions -->

<!-- Label: Functions -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

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

See [Contributing](./docs/contributing.md).

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

Copyright © 2018-2023 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).

## Don't forget to 🌟 Star 🌟 the repo if you like zsh-issues

[Your feedback is appreciated](https://github.com/hadenlabs/zsh-issues/issues)

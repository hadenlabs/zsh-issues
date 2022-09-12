#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install issues for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
ZSH_ISSUES_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_ISSUES_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_ISSUES_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_ISSUES_PATH}"/provider/main.zsh

# shellcheck source=/dev/null
source "${ZSH_ISSUES_PATH}"/workflow/main.zsh

# shellcheck source=/dev/null
source "${ZSH_ISSUES_PATH}"/pkg/main.zsh

# For this script to be able to get the exit status of the last executed command ($?)
# it must be loaded before any other script or function that adds a precmd hook.
# Only the first precmd hook access the original $?.
autoload -Uz add-zsh-hook
add-zsh-hook chpwd issues::provider::factory

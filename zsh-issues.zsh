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
source "${ZSH_ISSUES_PATH}"/pkg/main.zsh

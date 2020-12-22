#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/pkg/alias.zsh
}

issues::pkg::main::factory

issues::pkg::config::setup

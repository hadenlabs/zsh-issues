#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::provider::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/provider/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/provider/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/provider/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}/provider/$(issus::internal::get::provider).zsh"

    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/provider/alias.zsh
}

issues::provider::main::factory

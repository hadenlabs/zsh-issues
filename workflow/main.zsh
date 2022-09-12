#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::workflow::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/workflow/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/workflow/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/workflow/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}/workflow/$(issues::internal::get::workflow).zsh"

}

issues::workflow::main::factory

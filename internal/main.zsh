#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_ISSUES_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_ISSUES_PATH}"/internal/helper.zsh
}

issues::internal::main::factory

if ! core::exists rsync; then core::install rsync; fi
if ! core::exists gh; then core::install gh; fi
if ! core::exists glab; then core::install glab; fi
if ! core::exists less; then core::install less; fi
if ! core::exists fzf; then core::install fzf; fi
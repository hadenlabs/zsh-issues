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

if ! type -p rsync > /dev/null; then issues::internal::rync::install; fi
if ! type -p gh > /dev/null; then issues::internal::gh::install; fi
if ! type -p fzf > /dev/null; then issues::internal::fzf::install; fi
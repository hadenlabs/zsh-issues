#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install issues for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
issues_package_name="issues"

ISSUES_PLUGIN_DIR=$(dirname "${0}":A)
ISSUES_SOURCE_PATH="${ISSUES_PLUGIN_DIR}"/src

# messages
ISSUES_MESSAGE_REQUIRED_BREW="it's neccesary have brew for install or add luismayta/zsh-brew"

# shellcheck source=/dev/null
source "${ISSUES_SOURCE_PATH}"/base.zsh

function issues::factory {
    # shellcheck source=/dev/null
    source "${ISSUES_SOURCE_PATH}"/github.zsh
}

function issues {
    local task
    task="${1}"
    if [ -n "${task}" ]; then
        issues::task::me::create "${task}"
        return
    fi
    issues::search
}

#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
export GITHUB_USER="$(git config github.user)"

[ -z "${GITHUB_USER}" ] && message_warning "You should set 'git config --global github.user'."

function issues::list {
    gh issue list
}

function issues::search {
    issues::list | fzf
}

function issues::task::me::create {
    local task
    task=${1}
    gh issue create --assignee "${GITHUB_USER}" --title "${task}"
}

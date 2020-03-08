#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
GITHUB_USER="$(git config github.user)"

[ -z "${GITHUB_USER}" ] && message_warning "You should set 'git config --global github.user'."

function issues::list {
    hub issue
}

function issues::search {
    issues::list | fzf
}

function issues::task::me::create {
    local task
    task=${1}
    hub issue create -a "${GITHUB_USER}" -m "${task}"
}

#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
export GITHUB_USER:="$(git config github.user)"

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

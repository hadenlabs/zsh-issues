#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::list {
    hub issue
}

function issues::search {
    issues::list | fzf
}

# TODO change luismayta by var env
function issues::task::me::create {
    local task
    task=${1}
    hub issue create -a luismayta -m "${task}"
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

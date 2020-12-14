#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues {
    local task
    task="${1}"
    if [ -n "${task}" ]; then
        issues::task::me::create "${task}"
        return
    fi
    issues::search
}

function issues::dependences {
    message_info "Installing dependences for ${ISSUES_PACKAGE_NAME}"
    message_success "Installed dependences for ${ISSUES_PACKAGE_NAME}"
}
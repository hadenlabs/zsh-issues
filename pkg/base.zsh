#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::dependences {
    message_info "Installing dependences for ${ISSUES_PACKAGE_NAME}"
    message_success "Installed dependences for ${ISSUES_PACKAGE_NAME}"
}

function issues::pkg::config::setup {
    if [ -n "${GITHUB_USER}" ]; then
        git config --global github.user "${GITHUB_USER}"
    fi

    if [ -n "${GITLAB_USER}" ]; then
        git config --global gitlab.user "${GITLAB_USER}"
    fi
}

function issues::provider::factory {
    issues::provider::main::factory
}

function issues {
    local task
    task="${1}"
    if [ -n "${task}" ]; then
        issues::task::create "${task}"
        return
    fi
    issues::search
}

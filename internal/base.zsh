#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::gh::install {
    message_info "Installing gh ${ISSUES_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    brew install gh
    message_success "Installed gh ${ISSUES_PACKAGE_NAME}"
}

function issues::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${ISSUES_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${ISSUES_PACKAGE_NAME}"
}

function issues::internal::fzf::install {
    # shellcheck disable=SC2154
    message_info "Installing fzf for ${ISSUES_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    brew install fzf
    message_success "Installed fzf for ${ISSUES_PACKAGE_NAME}"
}

function issues::internal::git::flow::main {
    git config --get "gitflow.branch.master"
}

function issues::internal::git::flow::develop {
    git config --get "gitflow.branch.develop"
}

function issues::internal::git::branch::name {
    git symbolic-ref --short HEAD
}

function issues::internal::git::branch::kind {
    issues::internal::git::branch::name | cut -d "/" -f 1
}
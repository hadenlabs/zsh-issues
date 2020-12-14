#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::hub::install {
    message_info "Installing ${ISSUES_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    brew install hub
    message_success "Installed ${ISSUES_PACKAGE_NAME}"
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

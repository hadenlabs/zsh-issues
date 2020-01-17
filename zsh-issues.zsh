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

# shellcheck source=/dev/null
source "${ISSUES_SOURCE_PATH}"/base.zsh


function issues::packages {
    message_info "Install packages for $issues_package_name"
    message_success "Installed packages for $issues_package_name"
}

function issues::install {
    message_info "Installing $issues_package_name"
    message_success "Installed $issues_package_name"
}

function issues::post_install {
    message_info "Post Install $issues_package_name"
    message_success "Success Install $issues_package_name"
}

if ! type -p issues > /dev/null; then
    issues::install
    issues::post_install
fi

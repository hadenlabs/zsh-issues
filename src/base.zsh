#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function hub::install {
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_REQUIRED_BREW}"
        return
    fi

    brew install hub
}

if ! type -p hub > /dev/null; then hub::install; fi
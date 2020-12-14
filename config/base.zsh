#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export ISSUES_FILE_SETTINGS="${HOME}"/.tmux.conf
export ISSUES_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export ISSUES_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export ISSUES_PACKAGE_NAME=tmux
export ISSUES_TPM_PATH="${HOME}"/.tmux/plugins/tpm

[ -z "${EDITOR}" ] && export EDITOR="vim"
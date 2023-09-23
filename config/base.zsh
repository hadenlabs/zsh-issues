#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export ISSUES_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew"
export ISSUES_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm"
export ISSUES_TEMPLATES_PATH="${ZSH_ISSUES_PATH}/resources"
export ISSUES_SEARCH_ARGS=""
export ISSUES_PACKAGE_NAME=issues

GIT_REMOTE=$(command git ls-remote --get-url 2> /dev/null)
export GIT_REMOTE
#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

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

#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::git::flow::main {
    git config --get "gitflow.branch.master"
}

function issues::internal::git::flow::develop {
    git config --get "gitflow.branch.develop"
}

function issues::pr::branch::base {
    local kind_issue
    kind_issue="$(issues::internal::git::branch::kind)"
    case "${kind_issue}" in
    feature*)
        issues::internal::git::flow::develop
        ;;
    release*)
        issues::internal::git::flow::develop
        ;;
    hotfix*)
        issues::internal::git::flow::main
      ;;
    esac
}


#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::git::flow::main {
    git config --get "workflow.branch.main" || echo "main"
}

function issues::pr::branch::base {
  issues::internal::git::flow::main
}

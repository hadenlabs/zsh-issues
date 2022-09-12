#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function issues::internal::git::workflows {
    git config --get "git.workflows" || echo "githubflow"
}

function issues::internal::git::branch::name {
    git symbolic-ref --short HEAD
}

function issues::internal::get::worflow {
    issues::internal::git::workflows
}

function issues::internal::get::provider {
    local provider_name
    provider_name="github"
    if [[ "$GIT_REMOTE" =~ "github" ]]; then
        provider_name="github"
    elif [[ "$GIT_REMOTE" =~ "gitlab" ]]; then
        provider_name="gitlab"
    elif [[ "$GIT_REMOTE" =~ "bitbucket" ]]; then
        provider_name="bitbucket"
    fi
    echo "${provider_name}"
}

function issues::internal::git::branch::kind {
    issues::internal::git::branch::name | cut -d "/" -f 1
}

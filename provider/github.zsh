#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
export ISSUES_TEMPLATES_PROVIDER="${ISSUES_TEMPLATES_PATH}/github/templates/PULL_REQUEST_TEMPLATE.md"

export ISSUES_SEARCH_ARGS="no:assignee sort:created-desc"

function issues::username {
    git config github.user
}

function issues::list {
    gh issue list
}

function issues::task::create {
    local task
    task=${1}
    gh issue create --title "${task}"
}

function issues::task::feat {
    local task
    task="feat: ${1}"
    gh issue create --title "${task}" --body "" \
        --assignee @me \
        --label "status/backlog" \
        --label "kind/feature" \
        --label "priority/high"
}

function issues::task::fix {
    local task
    task="fix: ${1}"
    gh issue create --title "${task}" --body "" \
         --assignee @me \
         --label "status/backlog" \
         --label "kind/bug" \
         --label "priority/critical"
}

function issues::task::perf {
    local task
    task="perf: ${1}"
    gh issue create --title "${task}" --body "" \
         --assignee @me \
         --label "status/backlog" \
         --label "kind/perf" \
         --label "priority/medium"
}

function issues::task::docs {
    local task
    task="docs: ${1}"
    gh issue create --title "${task}" --body "" \
         --assignee @me \
         --label "status/backlog" \
         --label "kind/docs" \
         --label "priority/medium"
}

function issues::task::refactor {
    local task
    task="refactor: ${1}"
    gh issue create --title "${task}" --body "" \
         --assignee @me \
         --label "status/backlog" \
         --label "kind/refactor" \
         --label "priority/medium"
}

function issues::task::chore {
    local task
    task="chore: ${1}"
    gh issue create --title "${task}" --body "" \
        --assignee @me \
        --label "status/backlog" \
        --label "kind/chore" \
        --label "priority/medium"
}

function issues::pr::reviews {
    git config github.reviews
}

function issues::pr {
    local title reviewers body assignee
    reviewers="$(issues::pr::reviews)"
    title="${1}"
    body="$(issues::pr::body)"
    assignee="$(issues::username)"
    gh pr create --base "$(issues::pr::branch::base)" \
        --title "${title}" \
        --body "${body}" \
        --reviewer "${reviewers}" \
        --assignee "${assignee}"
}

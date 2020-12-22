#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
export GITHUB_USER="$(git config github.user)"
export ISSUES_TEMPLATES_PROVIDER="${ISSUES_TEMPLATES_PATH}/github/templates/PULL_REQUEST_TEMPLATE.md"

[ -z "${GITHUB_USER}" ] && message_warning "You should set 'git config --global github.user'."

function issues::list {
    gh issue list
}

function issues::search {
    issues::list | fzf
}

function issues::task::me::create {
    local task
    task=${1}
    gh issue create --assignee "${GITHUB_USER}" --title "${task}"
}

function issues::pr::reviews {
    git config github.reviews
}

function issues::pr {
    local title reviewers body
    reviewers="$(issues::pr::reviews)"
    title="${1}"
    body="$(issues::pr::body)"
    gh pr create --base "$(issues::pr::branch::base)" \
        --title "${title}" \
        --body "${body}" \
        --reviewer "${reviewers}" \
        --assignee "${GITHUB_USER}"
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

function issues::pr::changes {
    local changes branch_ref new_ref
    branch_ref="$(issues::pr::branch::base)"
    new_ref="${2:-HEAD}"
    git log "${branch_ref}...${new_ref}" --decorate=no --pretty='format:- %<(80,trunc)%s' | awk '{$1=$1;print}'
}

function issues::pr::body {
    local changes
    changes="$(issues::pr::changes)"

less << EOF
## Proposed changes

### changes:

${changes}

## Types of changes

What types of changes does your code introduce to Project? _Put an *x* in the boxes that apply_

- [ ] Bugfix (non-breaking change which fixes an issue)
- [x] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)

## Checklist

_Put an *x* in the boxes that apply. You can also fill these out after creating the PR. If you're unsure about any of them, don't hesitate to ask. We're here to help! This is simply a reminder of what we are going to look for before merging your code._

- [x] I have read the [CONTRIBUTING](/CONTRIBUTING.rst) doc
- [x] Lint and unit tests pass locally with my changes
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] I have added necessary documentation (if appropriate)
- [ ] Any dependent changes have been merged and published in downstream modules

EOF

}

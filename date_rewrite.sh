#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo 'usage: date_rewrite.sh COMMIT_HASH NEW_DATE';
    exit 1;
fi

COMMIT=$(git rev-parse --short $1)
DATE="$2"

{
    GIT_SEQUENCE_EDITOR="sed -i -e 's/^pick $COMMIT/edit $COMMIT/'";
    GIT_COMMITER_DATE="$DATE";

    git rebase -i $COMMIT~1^^ 
    git commit --amend --no-edit --author="$AUTHOR"
    git rebase --continue
} &> /dev/null

#!/usr/bin/env sh
echo "\x1B:wq\n" | git rebase $1 -i
# GIT_COMMITTER_DATE="$2"
# git commit --amend --no-edit --date "$2"
# git rebase --continue

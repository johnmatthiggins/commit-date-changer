#!/usr/bin/env sh
echo ":pick e\n:wq" | git rebase $1 -i
GIT_COMMITTER_DATE="$2"
git commit --amend --no-edit --date "$2"
git rebase --continue

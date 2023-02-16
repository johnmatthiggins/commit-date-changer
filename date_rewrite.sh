#!/usr/bin/env sh
echo ":pick e\n:wq" | git rebase "$1^" -i



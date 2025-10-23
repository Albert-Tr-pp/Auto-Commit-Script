#!/bin/bash

# ----- auto commit script (v.1) -----
# git auto-commit helper script

if [ ! -d .git ]; then
	echo "No .git found"
	exit 0
fi

current_branch=$(git rev-parse --abbrev-ref HEAD)
git fetch origin

if [ -n "$(git status --porcelain)" ]; then

	if [ -n "$1" ]; then
        	commit_message="$1"
	else
        	read -p "Enter commit message: " commit_message
	fi

	echo "Do Commit"
	git add .
	git commit -m "$commit_message"
	git push
else
	echo "$current_branch is up to date - no Commit"
	exit 0
fi

echo "DONE!"
exit 0

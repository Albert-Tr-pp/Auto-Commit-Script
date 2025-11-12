#!/bin/bash

# ----- auto repo checker (v.1) -----
# script to check git status of all git in dirs and subdirs. Will check all subdirs

show_git_stat(){
	local repo="$1"
	echo "---- Repo: $repo ----"

	git -C "$repo" status -s

	echo ""

}

find . -type d -name ".git" | while IFS= read -r gitdir; do
	repo=$(dirname "$gitdir")
	show_git_stat "$repo"
done

exit 0

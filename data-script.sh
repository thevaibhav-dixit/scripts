#!/bin/bash

set -e 

function main { 
	for rev in `revisions-list`;do 
	echo "`number_of_lines` `commit_desc`"
	done
}

function revisions-list {
	git rev-list --reverse HEAD
}

function commit_desc {
	git log --oneline -1 $rev
}

function number_of_lines {
	git ls-tree -r $rev |
	awk '{print $3}' |
	xargs git show |	
	wc -l
}

main

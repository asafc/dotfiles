#!/bin/bash

# github clone shortcut
# in the shell, type: github {user} {repo} ({local_repo_name})
function github() {
  local user=$1
  local repo=$2
  if [ $user ]; then
      if [ $repo ]; then
	  git clone https://github.com/$user/$repo.git $3
      fi
  fi
}

function bitbucket() {
    local user=$1
    local repo=$2
    if [ $user ]; then
	if [ $repo ]; then
	    git clone https://bitbucket.org/$user/$repo.git $3
	fi
    fi
}

function ln-vagrant() {
    local file=$1
    ln -s vagrant/$file.vagrantfile Vagrantfile
}

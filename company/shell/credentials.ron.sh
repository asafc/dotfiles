#!/bin/bash

export GIT_USER_NAME="Ron Adany"
export GIT_USER_EMAIL="ron@pricence.com"
export BITBUCKET_USER="ronad"

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global push.default simple

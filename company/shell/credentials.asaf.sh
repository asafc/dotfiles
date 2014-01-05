#!/bin/bash

export GIT_USER_NAME="Asaf Cohen"
export GIT_USER_EMAIL="asaf@pricence.com"
export BITBUCKET_USER="asafc"

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global push.default simple


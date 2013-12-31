#!/bin/bash

# django settings module shortcut
# in the shell, type: django-settings {project name}
function django-settings {
  local project=$1
  if [ $project ]; then
      export DJANGO_SETTINGS_MODULE=$project.settings
  fi
  echo "DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE"
}

# Make vim the default editor
export EDITOR="vim"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# DJANGO_SETTINGS_MODULE
django-settings pricetune

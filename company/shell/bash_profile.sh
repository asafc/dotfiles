#!/bin/bash

function source_if_exists {
  local shell_file=$1
  if [ -f $shell_file ]; then
      source $shell_file
  fi
}

source_if_exists ~/.functions
source_if_exists ~/.aliases
source_if_exists ~/.exports
source_if_exists ~/.prompt
source_if_exists ~/.path
source_if_exists ~/.completion
source_if_exists ~/.credentials

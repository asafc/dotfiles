#!/bin/bash

# functions

function prefix_path {
  local dir=$1
  if [ -d $dir ]; then
    PATH="$dir:${PATH}"
  fi
}

# PATH
prefix_path /usr/local/bin
prefix_path /usr/local/sbin
prefix_path /usr/local/share/python
prefix_path /usr/local/mysql/bin
prefix_path ~/.rbenv/shims/
prefix_path ~/projects/

# PYTHONPATH
export PYTHONPATH="$PYTHONPATH:/home/$(whoami)/projects/price_server/pricetune/"

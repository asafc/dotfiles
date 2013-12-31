#!/bin/bash

GRAY="\[\033[1;30m\]"
RED="\[\033[31m\]"
LIGHT_GRAY="\[\033[0;37m\]"
PURPLE="\[\033[35m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"

if [ -n "$BASH" ]; then
  export PS1="$LIGHT_CYAN\u@\h$NO_COLOR:$PURPLE\w$NO_COLOR\$ "
fi

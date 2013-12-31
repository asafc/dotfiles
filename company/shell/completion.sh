#!/bin/bash

if [ "$(uname -s)" == "Darwin" ]; then
    # bash completion
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
    fi
else
    if [ -f /etc/bash_completion ]; then
       . /etc/bash_completion
    fi
fi

exit 0

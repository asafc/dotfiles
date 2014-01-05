#!/bin/bash

me="$(whoami)"

./install_packages.sh
./install_dotfiles.sh $me

exit 0

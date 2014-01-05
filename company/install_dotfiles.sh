#!/bin/bash

echo "Installing dotfiles..."

me="$(whoami)"

# installs the dotfiles to the homedir
for file in {aliases,bash_profile,bashrc,completion,exports,functions,path,prompt}; do
    cp shell/$file.sh ~/.$file
    chown $me:$me ~/.$file
    chmod 755 ~/.$file
done

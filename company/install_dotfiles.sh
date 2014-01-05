#!/bin/bash

echo "Installing dotfiles..."

me=$1

# installs the dotfiles to the homedir
for file in {aliases,bash_profile,bashrc,completion,exports,functions,path,prompt}; do
    cp shell/$file.sh /home/$me/.$file
    chown $me:$me /home/$me/.$file
    chmod 755 /home/$me/.$file
done

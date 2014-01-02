#!/bin/bash

# installs bash completion on linux
if [ "$(uname -s)" == "Linux" ]; then
    apt-get install bash-completion
fi

# installs homebrew
if [ "$(uname -s)" == "Darwin" ]
then
    if test ! $(which brew)
    then
	echo "Installing Homebrew for you."
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
	
	echo "Installing bash completion"
	brew install bash-completion
    fi
fi

me="$(whoami)"

# installs the dotfiles to the homedir
for file in {aliases,bash_profile,bashrc,completion,exports,functions,path,prompt}; do
    cp shell/$file.sh ~/.$file
    chown $me:$me ~/.$file
    chmod 755 ~/.$file
done

for file in {cleandir,git-all,git-amend,git-credit,git-track,git-unstage,todo}; do
    sudo cp "bin/$file" "/usr/local/bin/$file"
    sudo chmod a+x "/usr/local/bin/$file"
done

exit 0

#!/bin/bash

echo "Installing packages..."

# installs bash completion on linux
if [ "$(uname -s)" == "Linux" ]; then
    sudo apt-get install bash-completion
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

echo "Installing useful commands..."

for file in {cleandir,git-all,git-amend,git-credit,git-track,git-unstage,todo}; do
    sudo cp "bin/$file" "/usr/local/bin/$file"
    sudo chmod a+x "/usr/local/bin/$file"
done

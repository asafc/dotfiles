# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# colorful commands
alias ls='ls -lhaG'
alias grep='grep -n --color=auto'

# git shortcuts
alias gits="git status"

alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# alias glog='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# find shortcuts
alias fp='find . -name "*.py" | xargs grep -n'
alias frb='find . -name "*.rb" | xargs grep -n'
alias fhtml='find . -name "*.html" | xargs grep -n'
alias fphp='find . -name "*.php" | xargs grep -n'
alias fcpp='find . -name "*.cpp" | xargs grep -n'
alias fhpp='find . -name "*.hpp" | xargs grep -n'
alias fc='find . -name "*.c" | xargs grep -n'
alias fh='find . -name "*.h" | xargs grep -n'
alias fel='find . -name "*.el" | xargs grep -n'


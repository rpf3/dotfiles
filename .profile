# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# add a new line at the end of the command prompt
PS1=${PS1%?}
PS1=${PS1%?}\n'$ '

# use .dir_colors if it exists
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# git
alias ga="git add ."
alias gb="git checkout -b"
alias gc="git commit"
alias gs="git status"
alias pl="git pull"
alias gitk="DISPLAY=:0 gitk"
alias master="git checkout master"

# kubernetes
alias k="kubectl"
alias kc="kubectl config set-context --current --namespace"

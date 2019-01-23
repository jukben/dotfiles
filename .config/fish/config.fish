# Set lang
set -xU LANG en_US.UTF-8 
set -xU LC_ALL en_US.UTF-8

# Set editor
set -xU REACT_EDITOR code

# Remove greeting
set fish_greeting

# Rbmv
status --is-interactive; and source (rbenv init -|psub)

# Let's use normal name :-)
title Terminal

# Set path for Coreutils
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/coreutils/libexec/gnuman $PATH
set -gx PATH /usr/local/opt/findutils/libexec/gnubin $PATH

# PB
set -gx PATH ~/Productboard/pb-toolkit/docker/bin $PATH

# Set enviroment variables for Android development
set -xU ANDROID_HOME $HOME/Library/Android/sdk
set -xU ANDROID_SDK_ROOT $ANDROID_HOME
set -xU ANDROID_SDK $ANDROID_HOME
set -xU ANDROID_NDK $ANDROID_HOME/android-ndk-r10e
set -gx PATH $ANDROID_HOME/emulator $ANDROID_HOME/tools/bin $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH

# Make Vim default editor
set -xU EDITOR vim

# Set GPG commit signing
set -xU GPG_TTY (tty)

# Source secret envs :)
source ~/.config/fish/secret.fish

# Aliases 
alias myghig "ghi list -g --mine"
alias myghi "ghi list --mine"
alias clr "clear"
alias gpp "git push"
alias gp "git pull"
alias nodesktop "defaults write com.apple.finder CreateDesktop false; killall Finder"
alias desktop "defaults write com.apple.finder CreateDesktop true; killall Finder"
alias dcs "docker-compose stop"
alias dcu "docker-compose up -d"

# The Fuck?
thefuck --alias | source

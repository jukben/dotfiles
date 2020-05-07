#!/bin/bash

# Show path in header of Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder

# For VIM Plugin
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Hide Desktop icons
defaults write com.apple.finder CreateDesktop false; killall Finder

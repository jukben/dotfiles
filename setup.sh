#!/bin/bash

# Show path in header of Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder

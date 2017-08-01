export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/jukben/.oh-my-zsh

ZSH_THEME="gitster"
COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git, cask, httpie, npm, yarn, tmux)

source $ZSH/oh-my-zsh.sh

# Language
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Fuck
eval "$(thefuck --alias)"

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN=""

. /usr/local/etc/profile.d/z.sh

# Andorid Studio
export ANDROID_HOME=${HOME}/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"
 
# aliases
alias andorid-emulator="tmux new -d /Users/jukben/Library/Android/sdk/tools/emulator -avd Nexus_5X_API_23"
alias ios-emulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias myghi="ghi list --mine"

# Set lang
set -xU LANG en_US.UTF-8 
set -xU LC_ALL en_US.UTF-8

# Set editor
set -gx REACT_EDITOR code

# Remove greeting
set fish_greeting

# PB
set -gx PATH ~/Productboard/pb-toolkit/docker/bin $PATH
set -gx AWS_PROFILE pb-staging

# Make Vim default editor
set -gx EDITOR vim

# Set GPG commit signing
set -gx GPG_TTY (tty)

# Source secret envs :)
source ~/.config/fish/secret.fish

# The Fuck?
thefuck --alias | source

# Brew
set -gx HOMEBREW_NO_ENV_HINTS true

if status is-interactive
  # Pb's 1Password
  eval (security find-generic-password -s op -w | op signin pb)
end

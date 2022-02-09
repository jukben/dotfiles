# Set lang
set -xU LANG en_US.UTF-8 
set -xU LC_ALL en_US.UTF-8

# Set editor
set -gx REACT_EDITOR code

# Remove greeting
set fish_greeting

# PB
set -gx PATH ~/Productboard/pb-toolkit/docker/bin $PATH
set -gx PATH ~/.rover/bin $PATH
set -gx AWS_PROFILE pb-staging
set -gx VAULT_ADDR https://vault.staging.productboard.net

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

# Nord theme for FZF
set -gx FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS' --color=fg:#D8DEE9,bg:-1,hl:#ebcb8b --color=fg+:#ECEFF4,bg+:-1,hl+:#ebcb8b --color=info:#5e81ac,prompt:#5e81ac,pointer:#b48ead --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

if status is-interactive
end

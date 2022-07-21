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
set -gx GRAPHQL_GATEWAY_REPO ~/Productboard/graphql-gateway

# Rust
set -gx PATH ~/.cargo/bin $PATH

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
set -gx PATH /opt/homebrew/sbin $PATH

# Nord theme for FZF
set -gx FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS' --color=fg:#D8DEE9,bg:-1,hl:#ebcb8b --color=fg+:#ECEFF4,bg+:-1,hl+:#ebcb8b --color=info:#5e81ac,prompt:#5e81ac,pointer:#b48ead --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

if status is-interactive
    rbenv init - fish | source
    fish_add_path /opt/homebrew/opt/tilt/bin
    fish_add_path /usr/local/bin
    fish_add_path ~/.cargo/bin
end

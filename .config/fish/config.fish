# Set lang
set -xU LANG en_US.UTF-8
set -xU LC_ALL en_US.UTF-8

# Set editor
set -gx REACT_EDITOR code

# Remove greeting
set fish_greeting

# Make Vim default editor
set -gx EDITOR vim

# Set GPG commit signing
set -gx GPG_TTY (tty)

# Source secret envs :)
source ~/.config/fish/secret.fish

# Brew
set -gx HOMEBREW_NO_ENV_HINTS true

# N
set -gx N_PREFIX ~/.n

# Nord theme for FZF
set -gx FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS' --color=fg:#D8DEE9,bg:-1,hl:#ebcb8b --color=fg+:#ECEFF4,bg+:-1,hl+:#ebcb8b --color=info:#5e81ac,prompt:#5e81ac,pointer:#b48ead --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

if status is-interactive
end

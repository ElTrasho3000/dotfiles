# .bash_profile

# Get the aliases and functions

[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
[[ -f "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"
[[ -f "$HOME/.bash_setenv" ]] && . "$HOME/.bash_setenv"

# SSH-Agent
eval "$(ssh-agent -s)"

. "$HOME/.local/bin/env"

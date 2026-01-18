# ~/.bashrc: executed by bash(1) for non-login shells
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set vi mode (keymappings in .inputrc)
set -o vi

# Set PS1

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='[\u@\h \W]\$ '
export color_prompt=yes

# Use TAB for menu-completion
#bind TAB:menu-complete

# Settings for .bash_history
# Don't save duplicates and commands starting with space
HISTCONTROL=ignoreboth
# Set count of commands saved
HISTSIZE=1000
# Set max. filesize
HISTFILESIZE=2000
# Append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Open new terminal windows in cwd
osc7_cwd() {
    local strlen=${#PWD}
    local encoded=""
    local pos c o
    for (( pos=0; pos<strlen; pos++ )); do
        c=${PWD:$pos:1}
        case "$c" in
            [-/:_.!\'\(\)~[:alnum:]] ) o="${c}" ;;
            * ) printf -v o '%%%02X' "'${c}" ;;
        esac
        encoded+="${o}"
    done
    printf '\e]7;file://%s%s\e\\' "${HOSTNAME}" "${encoded}"
}
PROMPT_COMMAND=${PROMPT_COMMAND:+${PROMPT_COMMAND%;}; }osc7_cwd

# Source aliases and environment variables
[[ -f ~/.bash_aliases ]] && . .bash_aliases
[[ -f ~/.bash_setenv ]] && . .bash_setenv
. "$HOME/.local/bin/env"

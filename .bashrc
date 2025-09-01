# ~/.bashrc: executed by bash(1) for non-login shells
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set PS1

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='[\u@\h \W]\$ '
color_prompt=yes

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

# Source aliases and environment variables
[[ -f ~/.bash_aliases ]] && . .bash_aliases
[[ -f ~/.bash_setenv ]] && . .bash_setenv
. "$HOME/.local/bin/env"

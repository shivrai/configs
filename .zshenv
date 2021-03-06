#!/usr/bin/env bash
# Shell specific exports

export TERM="xterm-256color"

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL="${LANG}";

# Some programs use VISUAL instead of EDITOR
export VISUAL=nvim
export EDITOR="$VISUAL"

# Allow 32³ history entries.
export HISTSIZE=32768
export HISTFILESIZE="${HISTSIZE}"
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL=ignoreboth
setopt hist_ignore_all_dups

# Avoid issues with `gpg`: https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty)

# Path to local oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Use ag as default source for fzf to filter directories.
export FZF_DEFAULT_COMMAND="ag -g '' --ignore-dir={.gitignore,node_modules}"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Jake Pauls
# https://jakepauls.dev
# https://github.com/jake-pauls

##
## General
##

# Use Neovim as the default editor
export EDITOR='nvim'

# Use gcc for default C/C++ compiler
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++

# Use bat for reading manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##
## Aliases
##

# File Confirmation
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Arch
alias pacman="sudo pacman"
alias pacgod="yay -Syu"                     # Update Standard and AUR Packages
alias pacup="sudo pacman -Syyu"             # Standard Package Update
alias yayup="yay -Sua"                      # Update AUR

# Disable ls highlighting, use automatic colors otherwise
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

alias ls='ls --color=auto'

# Colorize grep output (similar to rg)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Personal Navigation
alias drive="cd / && cd /media/Storage/FileStorage"
alias projects="cd / && cd /media/Storage/FileStorage/Projects"

# Fetch
alias fm6000="fm6000 -f ~/.dotfiles/config/fm6000/s.txt"

# alias wsl-drive="cd / && cd /mnt/e/FileStorage"
# alias wsl-projects="cd / && cd /mnt/e/FileStorage/Projects"

# Starship Prompt
eval "$(starship init zsh)"

#!/usr/bin/env sh

#
# ENVIRONMENT SETUP #
#
export ERRFILE=$HOME/.xsession-errors
export EDITOR=nvim
export FONTCONFIG_PATH=/etc/fonts

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
export QT_SCREEN_SCALE_FACTORS=1

export GEM_HOME=$HOME/.gem
export PYENV_ROOT="${HOME}/.pyenv"

export TERM=screen-256color
export TERMINAL=kitty

# Clipmenu Environment Variables
export CM_LAUNCHER=rofi
export CM_DIR=/tmp/clipmenu

# dmenu_udisk
export UDISKIE_DMENU_LAUNCHER="rofi"

# default terminal ranger
export TERMCMD=kitty

# Path
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Dotfiles/scripts:$PATH"
export PATH="/usr/lib/ccache/bin/:$PATH"

# fzf
# fzf with gruvbox colorscheme
# export FZF_DEFAULT_OPTS='
#  --color=fg:#ebdbb2,bg:#282828,hl:#d79921
#  --color=fg+:#282828,bg+:#d79921,hl+:#282828
#  --color=info:#ebdbb2,prompt:#d3869b,pointer:#282828
#  --color=marker:#282828,spinner:#d3869b,header:#d79921
# '
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --ignore-file .gitignore"

# Manpages
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

# Virsh
export VIRSH_DEFAULT_CONNECT_URI="qemu:///system"

# Npm
NPM_PREFIX="${HOME}/.local/share/node"
if [[ -z $(printf $PATH | grep $NPM_PREFIX/bin) ]]; then
  export PATH="$NPM_PREFIX/bin:$PATH"
fi
if [[ -z $(printf $PATH | grep $NPM_PREFIX/share/man) ]]; then
  export MANPATH="$NPM_PREFIX/share/man:$(manpath)"
fi

#!/bin/bash 

set -euxo pipefail

# Nvim
[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
[ -f ~/.config/nvim/init.vim ] || ln -s "${PWD}/init.vim" ~/.config/nvim/init.vim

# Alacritty
[ -d ~/.config/alacritty ] || mkdir -p ~/.config/alacritty
[ -f ~/.config/alacritty/alacritty.yml ] || ln -s "${PWD}/alacritty.yml" ~/.config/alacritty/alacritty.yml

# tmux
[ -f ~/.tmux.conf ] || ln -s "${PWD}/tmux.conf" ~/.tmux.conf

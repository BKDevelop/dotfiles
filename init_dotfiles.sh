#!/bin/bash

# setup neovim
rm -fr ~/.config/nvim/
mkdir ~/.config/nvim/
cp -r neovim/autoload/ ~/.config/nvim/
ln neovim/init.vim ~/.config/nvim/init.vim

# setup kitty
rm -fr ~/.config/kitty/
mkdir ~/.config/kitty/
ln kitty/kitty.conf ~/.config/kitty/kitty.conf

# setup tmux
rm ~/.tmux.conf
ln tmux/.tmux.conf  ~/.tmux.conf


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

# setup vscode
rm ~/.config/Code/User/settings.json ~/.config/Code/User/keybindings.json
mkdir ~/.config/Code/User/
ln vscode/settings.json ~/.config/Code/User/settings.json
ln vscode/keybindings.json ~/.config/Code/User/keybindings.json

# setup ideavimrc
rm ~/.ideavimrc
ln ideavimrc/.ideavimrc ~/.ideavimrc

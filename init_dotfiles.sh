#!/bin/bash

# function names
setup_neovim()
{
rm -fr ~/.config/nvim/
mkdir ~/.config/nvim/
cp -r neovim/autoload/ ~/.config/nvim/
ln neovim/init.vim ~/.config/nvim/init.vim
}

setup_kitty()
{
rm -fr ~/.config/kitty/
mkdir ~/.config/kitty/
ln kitty/kitty.conf ~/.config/kitty/kitty.conf
}

setup_tmux()
{
rm ~/.tmux.conf
ln tmux/.tmux.conf  ~/.tmux.conf
}

setup_vscode()
{
rm ~/.config/Code/User/settings.json ~/.config/Code/User/keybindings.json
mkdir ~/.config/Code/User/
ln vscode/settings.json ~/.config/Code/User/settings.json
ln vscode/keybindings.json ~/.config/Code/User/keybindings.json
}

setup_ideavimrc()
{
rm ~/.ideavimrc
ln ideavimrc/.ideavimrc ~/.ideavimrc
}

setup_all()
{
    setup_neovim
    setup_kitty
    setup_tmux
    setup_vscode
    setup_ideavimrc
}

list_options()
{
    echo "all"
    echo "neovim"
    echo "kitty"
    echo "tmux"
    echo "vscode"
    echo "ideavimrc"
}

_help()
{
    echo "This script installs dotfiles"
    echo "Usage:"
    echo "init_dotfiles <application>"
    echo ""
    echo "to see all available applications use:"
    echo "init_dotfiles list"
}

# main body


if [ "$1" == "list" ]; then
    list_options
elif [ "$1" == "all" ]; then
     setup_all
elif [ "$1" == "neovim" ]; then
    setup_neovim
elif [ "$1" == "kitty" ]; then
    setup_kitty
elif [ "$1" == "tmux" ]; then
    setup_tmux
elif [ "$1" == "vscode" ]; then
    setup_vscode
elif [ "$1" == "ideavimrc" ]; then
    setup_ideavimrc
else
    _help
fi

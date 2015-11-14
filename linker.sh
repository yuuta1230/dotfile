#!/bin/sh

CURRENT=$(cd $(dirname $0) && pwd)
ln -sf $CURRENT/.zshrc ~/.zshrc
ln -sf $CURRENT/.vimrc ~/.vimrc
ln -sf $CURRENT/.vim ~/.vim
ln -sf $CURRENT/.tmux.conf ~/.tmux.conf

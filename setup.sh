#!/bin/bash
set -ex

ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -snf $HOME/dotfiles/.gvimrc $HOME/.gvimrc
ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -snf $HOME/dotfiles/.zprofile $HOME/.zprofile
ln -snf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -snf $HOME/dotfiles/vim_rc $HOME/.vim

ln -snf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

if [ ! -d $HOME/bin ]; then
  mkdir $HOME/bin
fi


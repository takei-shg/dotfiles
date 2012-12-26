#!/bin/bash


ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.dir_colors $HOME/.dir_colors
ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc

ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/dotfiles/tmuxx $HOME/bin/tmuxx
chmod +x $HOME/bin/tmuxx

ln -s $HOME/dotfiles/tmux-pbcopy $HOME/bin/tmux-pbcopy
chmod +x $HOME/bin/tmux-pbcopy

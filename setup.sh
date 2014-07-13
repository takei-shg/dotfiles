#!/bin/bash
set -ex

# use oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git .my-zsh
cp .my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh


ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.gvimrc $HOME/.gvimrc
ln -s $HOME/dotfiles/.mamemose.rb $HOME/.mamemose.rb
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.dir_colors $HOME/.dir_colors
ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc
ln -s $HOME/dotfiles/.zprofile $HOME/.zprofile
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/dotfiles/tmuxx $HOME/bin/tmuxx
chmod +x $HOME/bin/tmuxx

ln -s $HOME/dotfiles/tmux-pbcopy $HOME/bin/tmux-pbcopy
chmod +x $HOME/bin/tmux-pbcopy
 
# for NeoBundle
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# symlink should be made for vim_plugins

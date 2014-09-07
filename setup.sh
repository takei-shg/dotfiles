#!/bin/bash
set -ex

if [ `uname | grep "Darwin"` ]; then
  os_type="OSX"
  if [ -z `which brew` ]; then
    echo "Please install homebrew first"
    echo "http://brew.sh/"
    exit 1
  fi
fi

# use oh-my-zsh
rm -rf $HOME/.oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh


ln -snf $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -snf $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -snf $HOME/dotfiles/.gvimrc $HOME/.gvimrc
ln -snf $HOME/dotfiles/.mamemose.rb $HOME/.mamemose.rb
ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -snf $HOME/dotfiles/.dir_colors $HOME/.dir_colors
ln -snf $HOME/dotfiles/.screenrc $HOME/.screenrc
ln -snf $HOME/dotfiles/.zprofile $HOME/.zprofile
ln -snf $HOME/dotfiles/.zshrc $HOME/.zshrc

ln -snf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

if [ ! -d $HOME/bin ]; then
  mkdir $HOME/bin
fi

#install tmux

if [ -e /etc/arch_release ]; then
  pacman -S tmux
elif [ -e /etc/debian_release ] || [ -e /etc/debian_version ]; then
  sudo apt-get update
  sudo apt-get install tmux
else
  if [ $os_type = "OSX" ]; then
      brew update
      brew install tmux
      brew install reattach-to-user-namespace
  fi
fi

ln -snf $HOME/dotfiles/tmuxx $HOME/bin/tmuxx
chmod +x $HOME/bin/tmuxx

ln -s $HOME/dotfiles/tmux-pbcopy $HOME/bin/tmux-pbcopy
chmod +x $HOME/bin/tmux-pbcopy

# for NeoBundle
if [ -d $HOME/.vim/bundle ]; then
  rm -rf $HOME/.vim/bundle
fi
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# symlink should be made for vim_plugins

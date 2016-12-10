#!/bin/bash

# Place all the required rc files here
rc_list=(".vimrc" ".bashrc" ".zshrc" ".zsh_aliases" ".conkyrc"
         ".xinitrc" ".xsession" ".xmodmap");

# Check if zsh is already installed
apt-cache policy zsh | grep 'Installed' &> /dev/null

if [[ $? -ne 0 ]]; then
  echo 'zsh is not installed!! Please install it first.'

else
  echo 'Found zsh!! Backing up...'
  for rc_file in ${rc_list[@]}; do
    if [ -f $rc_file ] || [ -L $rc_file ]; then
      mv $HOME/$rc_file $HOME/$rc_file.backup
    fi

    ln -s $HOME/dotfiles/$rc_file $HOME/$rc_file
  done

  source $HOME/.zshrc
  echo 'Success!!'
fi

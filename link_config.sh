#!/usr/bin/env bash

PWD=$(pwd)

# fish
ln -sf $PWD/conf/fish/config.fish -t $HOME/.config/fish/
unlink $HOME/.config/fish/fish_plugins > /dev/null 2>&1
cp -f $PWD/conf/fish/fish_plugins $HOME/.config/fish/
ln -sf $PWD/conf/fish/conf.d/color_scheme.fish -t $HOME/.config/fish/conf.d/
find $PWD/conf/fish/functions/ -maxdepth 1 -type f -print | xargs ln -sf -t $HOME/.config/fish/functions/ 

# lftp 
ln -sf $PWD/conf/lftp/lftprc $HOME/.lftprc

# nvim 
ln -sf $PWD/conf/nvim/init.vim -t $HOME/.config/nvim/
find $PWD/conf/nvim/configs/ -maxdepth 1 -type f -print | xargs ln -sf -t $HOME/.config/nvim/configs/ 

# bash
ln -sf $PWD/conf/bash/bashrc $HOME/.bashrc 

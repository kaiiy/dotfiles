#!/usr/bin/env bash

ln_dir () {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}

PWD=$(pwd)

# bash
ln -sf $PWD/conf/bash/bashrc $HOME/.bashrc 

# fish
ln -sf $PWD/conf/fish/config.fish -t $HOME/.config/fish/
unlink $HOME/.config/fish/fish_plugins > /dev/null 2>&1
cp -f $PWD/conf/fish/fish_plugins $HOME/.config/fish/
ln -sf $PWD/conf/fish/conf.d/color_scheme.fish -t $HOME/.config/fish/conf.d/
ln_dir $PWD/conf/fish/functions/ $HOME/.config/fish/functions/ 

# lftp 
ln -sf $PWD/conf/lftp/lftprc $HOME/.lftprc

# nvim 
mkdir -p $HOME/.config/nvim/configs/
ln -sf $PWD/conf/nvim/init.vim -t $HOME/.config/nvim/
ln_dir $PWD/conf/nvim/configs/ $HOME/.config/nvim/configs/ 

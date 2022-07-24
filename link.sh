#!/usr/bin/env bash

ln_dir () {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}

PWD=$(pwd)

# bash
ln -sf $PWD/conf/bash/bashrc $HOME/.bashrc 

# fish
FISH_SRC_HOME=$PWD/conf/fish
FISH_DIST_HOME=$HOME/.config/fish

ln -sf $FISH_SRC_HOME/config.fish -t $FISH_DIST_HOME/
cp -f $FISH_SRC_HOME/fish_plugins $FISH_DIST_HOME/
ln_dir $FISH_SRC_HOME/conf.d/color_scheme.fish $FISH_DIST_HOME/conf.d/
ln_dir $FISH_SRC_HOME/functions/ $FISH_DIST_HOME/functions/ 

# lftp 
ln -sf $PWD/conf/lftp/lftprc $HOME/.lftprc

# nvim 
mkdir -p $HOME/.config/nvim/configs/
ln -sf $PWD/conf/nvim/init.vim -t $HOME/.config/nvim/
ln_dir $PWD/conf/nvim/configs/ $HOME/.config/nvim/configs/ 

# zellij
mkdir -p $HOME/.config/zellij/
ln -sf $PWD/conf/zellij/config.yaml -t $HOME/.config/zellij/

#!/usr/bin/env bash

ln_dir () {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}

PWD=$(pwd)
SRC_HOME=$PWD/conf
DIST_HOME=$HOME/.config

# bash
ln -sf $SRC_HOME/bash/bashrc $HOME/.bashrc 

# fish
FISH_SRC_HOME=$SRC_HOME/fish
FISH_DIST_HOME=$DIST_HOME/fish

ln -sf $FISH_SRC_HOME/config.fish -t $FISH_DIST_HOME/
cp -f $FISH_SRC_HOME/fish_plugins $FISH_DIST_HOME/
ln_dir $FISH_SRC_HOME/conf.d/color_scheme.fish $FISH_DIST_HOME/conf.d/
ln_dir $FISH_SRC_HOME/functions/ $FISH_DIST_HOME/functions/ 

# lftp 
ln -sf $SRC_HOME/lftp/lftprc $HOME/.lftprc

# nvim 
# migrating to AstroNvim (https://github.com/AstroNvim/AstroNvim)
# NVIM_SRC_HOME=$SRC_HOME/nvim
# NVIM_DIST_HOME=$DIST_HOME/nvim

mkdir -p $NVIM_DIST_HOME/configs/
ln -sf $NVIM_SRC_HOME/init.vim -t $NVIM_DIST_HOME/
ln_dir $NVIM_SRC_HOME/configs/ $NVIM_DIST_HOME/configs/ 

# topgrade
TOPGRADE_SRC=$SRC_HOME/topgrade
TOPGRADE_DIST=$DIST_HOME
ln -sf $TOPGRADE_SRC/topgrade.toml $TOPGRADE_DIST

# zellij
ZELLIJ_SRC_HOME=$SRC_HOME/zellij
ZELLIJ_DIST_HOME=$DIST_HOME/zellij

mkdir -p $ZELLIJ_DIST_HOME/
ln -sf $ZELLIJ_SRC_HOME/config.yaml -t $ZELLIJ_DIST_HOME/

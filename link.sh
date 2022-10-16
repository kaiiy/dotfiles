#!/usr/bin/env bash

ln_dir () {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}

PWD=$(pwd)
SRC_HOME=$PWD/conf
DEST_HOME=$HOME/.config

# bash
ln -sf $SRC_HOME/bash/bashrc $HOME/.bashrc 

# fish
FISH_SRC_HOME=$SRC_HOME/fish
FISH_DEST_HOME=$DEST_HOME/fish

ln -sf $FISH_SRC_HOME/config.fish -t $FISH_DEST_HOME/
cp -f $FISH_SRC_HOME/fish_plugins $FISH_DEST_HOME/
ln_dir $FISH_SRC_HOME/conf.d/color_scheme.fish $FISH_DEST_HOME/conf.d/
ln_dir $FISH_SRC_HOME/functions/ $FISH_DEST_HOME/functions/ 

# lftp 
ln -sf $SRC_HOME/lftp/lftprc $HOME/.lftprc

# nvim 
# migrating to AstroNvim (https://github.com/AstroNvim/AstroNvim)
# NVIM_SRC_HOME=$SRC_HOME/nvim
# NVIM_DEST_HOME=$DEST_HOME/nvim

# mkdir -p $NVIM_DEST_HOME/configs/
# ln -sf $NVIM_SRC_HOME/init.vim -t $NVIM_DEST_HOME/
# ln_dir $NVIM_SRC_HOME/configs/ $NVIM_DEST_HOME/configs/ 

# topgrade
TOPGRADE_SRC=$SRC_HOME/topgrade
TOPGRADE_DEST=$DEST_HOME
ln -sf $TOPGRADE_SRC/topgrade.toml $TOPGRADE_DEST

# zellij
ZELLIJ_SRC_HOME=$SRC_HOME/zellij
ZELLIJ_DEST_HOME=$DEST_HOME/zellij

mkdir -p $ZELLIJ_DEST_HOME/
ln -sf $ZELLIJ_SRC_HOME/config.yaml -t $ZELLIJ_DEST_HOME/

# task
if [ ! -f ~/.config/fish/completions/task.fish ]; then
    wget https://raw.githubusercontent.com/go-task/task/master/completion/fish/task.fish \
        -O ~/.config/fish/completions/task.fish -q
fi

# bat
BAT_SRC=$SRC_HOME/bat
BAT_DEST=$DEST_HOME/bat

mkdir -p $BAT_DEST/
ln -sf $BAT_SRC/config -t $BAT_DEST

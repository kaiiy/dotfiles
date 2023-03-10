#!/usr/bin/env bash

ln_dir () {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}
cp_link () {
    find $1 -maxdepth 1 -type l -print | xargs -i cp -f {} $2 
}

PWD=$(pwd)
SRC_HOME=$PWD/etc
DEST_HOME=$HOME/.config

# bash
ln -sf $SRC_HOME/bash/bashrc $HOME/.bashrc 

# fish
FISH_SRC_HOME=$SRC_HOME/fish
FISH_DEST_HOME=$DEST_HOME/fish

mkdir -p $FISH_DEST_HOME/conf.d/
mkdir -p $FISH_DEST_HOME/functions/
mkdir -p $FISH_DEST_HOME/completions/

ln -sf $FISH_SRC_HOME/config.fish -t $FISH_DEST_HOME/
cp -f $FISH_SRC_HOME/fish_plugins $FISH_DEST_HOME/
ln_dir $FISH_SRC_HOME/conf.d/color_scheme.fish $FISH_DEST_HOME/conf.d/
ln_dir $FISH_SRC_HOME/functions/ $FISH_DEST_HOME/functions/ 
cp_link /home/linuxbrew/.linuxbrew/share/fish/vendor_completions.d/ $FISH_DEST_HOME/completions/

# task completion
wget -O $FISH_DEST_HOME/completions/task.fish https://raw.githubusercontent.com/kaiiy/task-completion-for-fish/main/task.fish  >> /dev/null 2>&1

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
ln -sf $ZELLIJ_SRC_HOME/config.kdl -t $ZELLIJ_DEST_HOME/


# bat
BAT_SRC=$SRC_HOME/bat
BAT_DEST=$DEST_HOME/bat

mkdir -p $BAT_DEST/
ln -sf $BAT_SRC/config -t $BAT_DEST

# inkscape
# INKSCAPE_SRC=$SRC_HOME/inkscape
# INKSCAPE_DEST=$DEST_HOME/inkscape
# mkdir -p $DEST_HOME/inkscape/
# ln -sf $INKSCAPE_SRC/preferences.xml -t $INKSCAPE_DEST

# hyper
HYPER_SRC=$SRC_HOME/hyper
HYPER_DEST=$HOME
ln -sf $HYPER_SRC/hyper.js $HYPER_DEST/.hyper.js
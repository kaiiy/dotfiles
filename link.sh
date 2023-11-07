#!/usr/bin/env bash

ln_dir() {
    find $1 -maxdepth 1 -type f -print | xargs ln -sf -t $2
}
cp_link() {
    find $1 -maxdepth 1 -type l -print | xargs -i cp -f {} $2
}

PWD=$(pwd)
SRC=$PWD/etc
DEST=$HOME/.config

# bash
ln -sf $SRC/bash/bashrc $HOME/.bashrc

# fish
FISH_SRC=$SRC/fish
FISH_DEST=$DEST/fish

mkdir -p $FISH_DEST/conf.d/
mkdir -p $FISH_DEST/functions/
mkdir -p $FISH_DEST/completions/

ln -sf $FISH_SRC/config.fish -t $FISH_DEST/
cp -f $FISH_SRC/fish_plugins $FISH_DEST/
ln -sf $FISH_SRC/conf.d/color_scheme.fish $FISH_DEST/conf.d/
ln_dir $FISH_SRC/functions/ $FISH_DEST/functions/
ln_dir $FISH_SRC/completions/ $FISH_DEST/completions/
cp_link /home/linuxbrew/.linuxbrew/share/fish/vendor_completions.d/ $FISH_DEST/completions/

# task completion
wget -O $FISH_DEST/completions/task.fish https://raw.githubusercontent.com/go-task/task/main/completion/fish/task.fish >>/dev/null 2>&1

# topgrade
TOPGRADE_SRC=$SRC/topgrade
TOPGRADE_DEST=$DEST
ln -sf $TOPGRADE_SRC/topgrade.toml $TOPGRADE_DEST

# zellij
ZELLIJ_SRC=$SRC/zellij
ZELLIJ_DEST=$DEST/zellij

mkdir -p $ZELLIJ_DEST/
ln -sf $ZELLIJ_SRC/config.kdl -t $ZELLIJ_DEST/

# bat
BAT_SRC=$SRC/bat
BAT_DEST=$DEST/bat

mkdir -p $BAT_DEST/
ln -sf $BAT_SRC/config -t $BAT_DEST

# git 
GIT_SRC=$SRC/git
GIT_DST=$DEST/git

mkdir -p $GIT_DST
ln -sf $GIT_SRC/ignore -t $GIT_DST

# inkscape
# INKSCAPE_SRC=$SRC/inkscape
# INKSCAPE_DEST=$DEST/inkscape
# mkdir -p $DEST/inkscape/
# ln -sf $INKSCAPE_SRC/preferences.xml -t $INKSCAPE_DEST

# nvim 
#NVIM_SRC=$SRC/nvim
#NVIM_DEST=$DEST/nvim

#mkdir -p $NVIM_DEST/configs/
#ln -sf $NVIM_SRC/init.vim -t $NVIM_DEST/
#ln_dir $NVIM_SRC/configs/ $NVIM_DEST/configs/ 

# hyper
HYPER_SRC=$SRC/hyper
HYPER_DEST=$HOME
ln -sf $HYPER_SRC/hyper.js $HYPER_DEST/.hyper.js

# rustscan
HYPER_SRC=$SRC/rustscan
HYPER_DEST=$HOME
ln -sf $HYPER_SRC/rustscan.toml $HYPER_DEST/.rustscan.toml

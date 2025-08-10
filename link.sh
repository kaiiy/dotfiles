#!/usr/bin/env bash

ln_dir() {
    find "$1" -maxdepth 1 -type f -print0 | xargs -0 -I{} ln -sf {} "$2"
}
cp_link() {
    find "$1" -maxdepth 1 -type l -print0 | xargs -0 -I{} cp -f {} "$2"
}

PWD=$(pwd)
SRC=$PWD/etc
DEST=$HOME/.config

# fish
FISH_SRC=$SRC/fish
FISH_DEST=$DEST/fish

mkdir -p $FISH_DEST/conf.d/
mkdir -p $FISH_DEST/functions/
mkdir -p $FISH_DEST/completions/

ln -sf $FISH_SRC/config.fish $FISH_DEST/config.fish
cp -f $FISH_SRC/fish_plugins $FISH_DEST/
ln -sf $FISH_SRC/conf.d/color_scheme.fish $FISH_DEST/conf.d/color_scheme.fish
ln_dir $FISH_SRC/functions/ $FISH_DEST/functions/
ln_dir $FISH_SRC/completions/ $FISH_DEST/completions/

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
ln -sf $ZELLIJ_SRC/config.kdl $ZELLIJ_DEST/config.kdl

# bat
BAT_SRC=$SRC/bat
BAT_DEST=$DEST/bat

mkdir -p $BAT_DEST/
ln -sf $BAT_SRC/config $BAT_DEST/config

# git 
GIT_SRC=$SRC/git
GIT_DST=$DEST/git

mkdir -p $GIT_DST
ln -sf $GIT_SRC/ignore $GIT_DST/ignore

# rustscan
RUSTSCAN_SRC=$SRC/rustscan
RUSTSCAN_DEST=$HOME
ln -sf $RUSTSCAN_SRC/rustscan.toml $RUSTSCAN_DEST/.rustscan.toml

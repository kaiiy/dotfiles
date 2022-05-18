#!/usr/bin/env bash

PWD=$(pwd)

# fish
ln -sf $PWD/conf/fish/config.fish -t ~/.config/fish/
ln -sf $PWD/conf/fish/fish_plugins -t ~/.config/fish/
ln -sf $PWD/conf/fish/conf.d/color_scheme.fish -t ~/.config/fish/conf.d/
find $PWD/conf/fish/functions/ -maxdepth 1 -type f -print | xargs ln -sf -t ~/.config/fish/functions/ 

# lftp 
ln -sf $PWD/conf/lftp/lftprc ~/.lftprc

# nvim 
ln -sf $PWD/conf/nvim/init.vim -t ~/.config/nvim/
find $PWD/conf/nvim/configs/ -maxdepth 1 -type f -print | xargs ln -sf -t ~/.config/nvim/configs/ 

# bash
ln -sf $PWD/conf/bash/bashrc ~/.bashrc 

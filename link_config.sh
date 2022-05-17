#!/usr/bin/env bash

PWD=$(pwd)

# fish
ln -sf $PWD/conf/fish/config.fish -t ~/.config/fish/
ln -sf $PWD/conf/fish/fish_plugins -t ~/.config/fish/
ln -sf $PWD/conf/fish/conf.d/color_scheme.fish -t ~/.config/fish/conf.d/
ln -sf $PWD/conf/fish/functions/git-ssh-keygen.fish -t ~/.config/fish/functions/

# lftp 
ln -sf $PWD/conf/lftp/lftprc ~/.lftprc

# nvim 
ln -sf $PWD/conf/nvim/init.vim -t ~/.config/nvim/
find $PWD/conf/nvim/configs/ -type f -print | xargs ln -sf -t ~/.config/nvim/configs/ 

# bash
ln -sf $PWD/conf/bash/bashrc ~/.bashrc 

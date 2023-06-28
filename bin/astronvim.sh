#!/usr/bin/env bash

rm -rf ~/.config/nvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync

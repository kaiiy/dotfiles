#!/usr/bin/env bash

init_ubuntu() {
	sudo apt-get install pkg-config
}

init_node() {
	curl https://get.volta.sh | bash -s -- --skip-setup
	volta install node
	volta install yarn
}

init_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	bash
	cargo install cargo-update
	cargo install exa
	cargo install procs
	cargo install bat
	cargo install ripgrep
}

init_fish() {
	echo Start fish shell installation!
	
	sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get install fish

	mkdir -p $HOME/.config/fish/conf.d/
	mkdir -p $HOME/.config/fish/functions/

	fish
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish\
		| source && fisher install jorgebucaran/fisher
}

init_neovim() {
	echo Start neovim installation!

	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get upgrade -y

	# install vim-plug 
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	# todo: add package installtion feat  
}

init_nvim_onedark() {
	mkdir -p $HOME/.config/nvim/colors/
	curl -sSf  https://raw.githubusercontent.com/joshdick/onedark.vim/main/colors/onedark.vim -o $HOME/.config/nvim/colors/onedark.vim

	mkdir -p $HOME/.config/nvim/autoload/lightline/
	curl -sSf https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/lightline/colorscheme/onedark.vim -o $HOME/.config/nvim/autoload/lightline/onedark.vim
	curl -sSf https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim -o $HOME/.config/nvim/autoload/onedark.vim
}

init_zellij() {
	cargo install zellij
}

#!/usr/bin/env bash

init_ubuntu() {
	sudo apt-get install pkg-config
}

init_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	bash
	cargo install cargo-update
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

	# todo: add package installtion feat  
}



#!/usr/bin/env bash

init_ubuntu() {
	sudo apt-get install pkg-config curl build-essential gcc make -y
}

init_fish() {
	sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt-get update
	sudo apt-get install fish -y

	mkdir -p $HOME/.config/fish/conf.d/
	mkdir -p $HOME/.config/fish/functions/

	fish
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish\
		| source && fisher install jorgebucaran/fisher
}

init_node() {
	curl https://get.volta.sh | bash -s -- --skip-setup
	volta install node
	volta install yarn
}

init_rust() {
	curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
	fish
	cargo install bat cargo-update exa fd-find procs ripgrep topgrade zellij deno
}

init_neovim() {
	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install neovim -y

	# install vim-plug 
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	# todo: add package installtion feat  
}


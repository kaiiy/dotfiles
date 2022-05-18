#!/usr/bin/env bash

init_ubuntu() {
	sudo apt-get install pkg-config
}

init_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	bash
	cargo install cargo-update
}


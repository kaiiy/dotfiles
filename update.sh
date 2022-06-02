#!/usr/bin/env bash

update_fisher() {
	fisher update
}

update_cargo() {
	cargo install-update --all
}

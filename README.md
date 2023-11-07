# dotfiles 

## Requirements

- WSL2
- Ubuntu 23.04

## Installation

```sh
$ sudo apt-add-repository ppa:fish-shell/release-3
$ sudo apt update
$ sudo apt install fish
$ fish
$ curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
$ ./link.sh
$ fisher update
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew install neovim zellij bat exa
```

## Features

- bash (only used to start fish shell)
- [fish](https://github.com/fish-shell/fish-shell)
- [volta](https://github.com/volta-cli/volta)
- [Neovim](https://github.com/neovim/neovim) 
- [lftp](https://packages.ubuntu.com/jammy/lftp)
- [Zellij](https://github.com/zellij-org/zellij)
- [Task](https://taskfile.dev)
- [bat](https://github.com/sharkdp/bat)
- [topgrade](https://github.com/topgrade-rs/topgrade)
- [Hyper](https://github.com/vercel/hyper)

## Update

### Packages

To update installed packages, run the following command:

```sh
$ topgrade
```

### Dotfiles

To update dotfiles, run the following command:

```sh
$ ./link.sh
```

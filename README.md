# dotfiles 

## Requirements

- WSL2
- Ubuntu 22.04

## Installation

1. Install the following applications according to the URLs.

- [Homebrew](https://brew.sh)
- [fish](https://launchpad.net/~fish-shell/+archive/ubuntu/release-3)

2. Run the following commands.

```sh
$ ./bin/init/homebrew.sh

$ fish
$ ./bin/init/fisher.sh

$ ./link.sh
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

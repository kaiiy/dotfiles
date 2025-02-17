# dotfiles 

## Requirements

- Ubuntu 24.04 or macOS 15 Sequoia
- [Homebrew](https://brew.sh)

## Installation

```sh
gh repo clone kaiiy/dotfiles
cd dotfiles/
sudo apt-add-repository ppa:fish-shell/release-3 
sudo apt update
sudo apt install fish
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
./link.sh
brew bundle --file ./etc/brew/Brewfile
fish
fisher update
```

## Update

### Packages

To update installed packages, run the following command:

```sh
topgrade
```

### Dotfiles

To update dotfiles, run the following command:

```sh
./link.sh
```


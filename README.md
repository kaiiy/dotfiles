# dotfiles

## Requirements

- macOS 26

## Prerequisites

Install the following before getting started:

- [Homebrew](https://brew.sh)
- [Fish Shell](https://fishshell.com/)

## Installation

```sh
gh repo clone kaiiy/dotfiles
cd dotfiles
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
./link.sh
brew bundle --file ./etc/brew/Brewfile
fish
fisher update
```

## Updating

Whenever the dotfiles are updated, re-run the following command to recreate the symbolic links:

```sh
./link.sh
```

# dotfiles 

## Requirements

- Ubuntu 24.04 or macOS Sequoia
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

## Fonts

[JetBrainsMono Nerd Font Mono](https://www.nerdfonts.com/font-downloads#:~:text=font%20for%20developers-,Download,-Preview%20on%20ProgrammingFonts)

### VSCode 

```json
{
    "editor.fontFamily": "'JetBrainsMono Nerd Font Mono', Consolas, 'Courier New', monospace"
}
```

### Windows Terminal

```json
{
      "profiles": {
        "defaults": {
            "font": {
                "face": "JetBrainsMono Nerd Font Mono" 
            }
        }
      }
}
```

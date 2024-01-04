# dotfiles 

## Requirements

- Ubuntu 23.04
- Homebrew

## Installation

```sh
$ git clone git@github.com:kaiiy/dotfiles.git
$ cd dotfiles/
$ sudo apt-add-repository ppa:fish-shell/release-3 
$ sudo apt update
$ sudo apt install fish
$ fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
$ ./link.sh
$ fisher update
$ brew bundle --file ./etc/brew/Brewfile
```

**Options**


```sh
$ curl https://get.volta.sh | bash
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

# dotfiles 

## Requirements

- Ubuntu 23.04
- Homebrew

## Installation

```sh
$ git clone git@github.com:kaiiy/dotfiles.git
$ cd dotfiles/
$ brew install fish
$ fish
$ curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
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

### VSCode 

[JetBrains Mono](https://www.jetbrains.com/lp/mono/)

```json
{
    "editor.fontFamily": "'JetBrains Mono', Consolas, 'Courier New', monospace"
}
```

### Terminal

[Monaspice](https://www.nerdfonts.com/font-downloads#:~:text=to%20improve%20legibility-,Download,-Preview%20on%20ProgrammingFonts)

```json
{
      "profiles": {
        "defaults": {
            "font": {
                "face": "MonaspiceNe Nerd Font Propo" 
            }
        }
      }
}
```

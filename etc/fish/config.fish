if status is-interactive
    set -gx LANG C.UTF-8

    # 1 character
    abbr -a c clear
    abbr -a d docker
    abbr -a g git
    abbr -a h history
    abbr -a l ls
    abbr -a m mohaya
    abbr -a p ping
    abbr -a w which
    abbr -a y yarn
    alias z="z-wrapper"

    # Apt
    abbr -a ad sudo apt update
    abbr -a ag sudo apt upgrade -y

    # Linux commands
    abbr -a sd pushd
    abbr -a pd popd
    abbr -a du du -sh
    abbr -a wh which
    abbr -a ns nslookup

    # Common commands
    abbr -a vs code .
    abbr -a vim nvim
    abbr -a dc docker compose

    # IP
    abbr -a ip ip -c
    abbr -a myip curl inet-ip.info
    abbr -a p8 ping 8.8.8.8

    # Tar
    abbr -a tgz tar zcvf
    abbr -a untgz tar zxvf

    # History
    abbr -a hf "history | fzf"
    abbr -a hfc "history | fzf | clip"

    # Less
    set -x LESS '-g -i -M -R -S -z-4 -x4'
    set -x PAGER less
    set -x LESS_TERMCAP_mb (printf "\e[01;31m")
    set -x LESS_TERMCAP_md (printf "\e[01;31m")
    set -x LESS_TERMCAP_me (printf "\e[0m")
    set -x LESS_TERMCAP_se (printf "\e[0m")
    set -x LESS_TERMCAP_so (printf "\e[01;107;30m")
    set -x LESS_TERMCAP_ue (printf "\e[0m")
    set -x LESS_TERMCAP_us (printf "\e[01;32m")

    # Linuxbrew commands
    abbr -a ls eza
    abbr -a la eza -a
    abbr -a ll eza -l
    abbr -a lla eza -la
    abbr -a tree eza --tree
    # abbr -a ps procs
    # abbr -a grep rg
    abbr -a find fd
    abbr -a ca bat
    abbr -a tg topgrade
    abbr -a rm trash-put

    # fzf (Tokyo Night Theme)
    set -Ux FZF_DEFAULT_OPTS "--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7 --color=fg+:#ffffff,bg+:#1a1b26,hl+:#7dcfff --color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff --color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

    # Git
    abbr -a gc git commit -m
    abbr -a ga git add .
    abbr -a gp git pull
    abbr -a gu git push
    abbr -a gf git dft --staged
    abbr -a gl git log --oneline --graph --color=always
    abbr -a gg aicommits --all
    git config --global pull.rebase true
    git config --global init.defaultBranch main

    # Python
    abbr -a python python3
    abbr -a poe poetry
    alias python="python3"

    # Wsl2
    alias clip="clip.exe"
    alias open="explorer.exe"

    abbr -a mkpass "pwgen -1scnB --symbols 12 5000 | rg \"^[a-zA-Z0-9-]+\\\$\" | head -n 5"

    # Path 
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.volta/bin
    fish_add_path $HOME/.nimble/bin
    fish_add_path /home/linuxbrew/.linuxbrew/bin
    fish_add_path $HOME/go/bin
    fish_add_path $HOME/.rye/shims
    fish_add_path $HOME/.deno/bin

    eval "$(ssh-agent -c)" > /dev/null

    eval (zellij setup --generate-auto-start fish | string collect)
end

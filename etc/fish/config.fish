if status is-interactive
    set -gx LANG C.UTF-8

    # Apt
    abbr -a ad sudo apt update
    abbr -a ag sudo apt upgrade -y

    # Linux commands
    abbr -a sd pushd
    abbr -a pd popd
    abbr -a du du -sh
    abbr -a wh which
    abbr -a c clear
    abbr -a ns nslookup

    # Common commands
    abbr -a vs code .
    abbr -a vim nvim
    abbr -a dc docker compose

    # IP
    abbr -a ip ip -c
    abbr -a myip curl inet-ip.info
    abbr -a p8 ping 8.8.8.8
    abbr -a p ping

    # Tar
    abbr -a tgz tar zcvf
    abbr -a untgz tar zxvf

    # History
    abbr -a h history
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
    abbr -a ps procs
    # abbr -a grep rg
    abbr -a find fd
    abbr -a ca bat
    abbr -a tg topgrade
    abbr -a rm trash-put

    # Z
    alias z="z-wrapper"

    # fzf (Tokyo Night Theme)
    set -Ux FZF_DEFAULT_OPTS "--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7 --color=fg+:#ffffff,bg+:#1a1b26,hl+:#7dcfff --color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff --color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

    # Git
    abbr -a gc git commit -m
    abbr -a ga git add .
    abbr -a gp git pull
    abbr -a gu git push
    abbr -a gl git log --oneline --graph --color=always
    abbr -a gg npx aicommits --all

    # Python
    abbr -a python python3

    # Wsl2
    alias clip="clip.exe"
    alias open="explorer.exe"

    abbr -a mkpass pwgen -cnsB 12

    # Original
    abbr -a m mohaya

    # Path 
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.volta/bin
    fish_add_path $HOME/.nimble/bin
    fish_add_path /home/linuxbrew/.linuxbrew/bin
    fish_add_path $HOME/go/bin
    fish_add_path $HOME/.rye/shims

    eval (zellij setup --generate-auto-start fish | string collect)
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Wasmer
export WASMER_DIR="/home/wakit/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

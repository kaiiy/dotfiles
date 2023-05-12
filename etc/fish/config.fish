if status is-interactive
    set -gx LANG C.UTF-8

    # Apt
    abbr -a ad sudo apt update
    abbr -a ag sudo apt upgrade -y

    # Commonly used commands
    abbr -a sd pushd
    abbr -a pd popd
    abbr -a du du -sh

    # Get my global IP
    abbr -a ip:g curl inet-ip.info

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

    # Rust commands
    abbr -a ls exa
    abbr -a la exa -a
    abbr -a ll exa -l
    abbr -a lla exa -la
    abbr -a tree exa --tree
    abbr -a ps procs
    abbr -a grep rg
    abbr -a find fd
    abbr -a ca bat

    # Z
    alias z="z-wrapper"

    # Git
    abbr -a gc git commit -m
    abbr -a ga git add .
    abbr -a gp git pull
    abbr -a gu git push
    abbr -a gl git log --oneline --graph --color=always

    abbr -a vim nvim
    abbr -a rm trash-put
    alias open="explorer.exe"
    abbr -a dc docker compose

    # Node.js
    abbr -a pn pnpm
    abbr -a px pnpx

    # Python
    abbr -a poe poetry
    abbr -a python python3

    # Wsl2
    alias clip="clip.exe"

    # Generate a password
    abbr -a mkpass pwgen -cnsB 12

    # Path 
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.volta/bin
    fish_add_path $HOME/.nimble/bin
    fish_add_path /home/linuxbrew/.linuxbrew/bin
    fish_add_path $HOME/go/bin

    eval (zellij setup --generate-auto-start fish | string collect)
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

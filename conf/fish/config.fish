if status is-interactive
    set -x LANG C.UTF-8

    # apt
    abbr -a ad sudo apt update
    abbr -a ag sudo apt upgrade -y

    # standard command
    abbr -a sd pushd
    abbr -a pd popd
    abbr -a du du -sh

    # rust alt command
    abbr -a cat bat
    abbr -a ls exa
    abbr -a la exa -a
    abbr -a ll exa -l
    abbr -a lla exa -la
    abbr -a tree exa --tree
    abbr -a ps procs
    abbr -a grep rg
    abbr -a find fd

    # z 
    alias z="z-wrapper"

    # git
    abbr -a gc git commit -m
    abbr -a ga git add .
    abbr -a gp git pull
    abbr -a gu git push
    abbr -a gl git log --oneline --graph --color=always

    abbr -a vim nvim
    # alias pbcopy="xclip -selection c"
    abbr -a rm trash-put
    alias open="explorer.exe"
	abbr -a dc docker compose

	# node.js
	abbr -a pn pnpm
	abbr -a px pnpx
	
	# python 
	# alias python3="/home/linuxbrew/.linuxbrew/bin/python3.10"
	# alias pip3="/home/linuxbrew/.linuxbrew/bin/pip3.10"
	abbr -a poe poetry

    # set fish_cursor_default line
    # set fish_cursor_insert line

    # path 
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.volta/bin
	fish_add_path $HOME/.nimble/bin
	fish_add_path /home/linuxbrew/.linuxbrew/bin
	fish_add_path $HOME/go/bin

    eval "$(zellij setup --generate-auto-start fish)"
end

set -gx VOLTA_HOME "$HOME/.volta"

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

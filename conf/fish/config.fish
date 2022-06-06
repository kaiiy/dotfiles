if status is-interactive
	set -x LANG C.UTF-8

	# apt
	abbr -a ad sudo apt update
	abbr -a ag sudo apt upgrade -y

    abbr -a sd pushd
    abbr -a pd popd
	
	# rust alt command
	abbr -a pcat cat
    abbr -a cat bat 
	abbr -a ls exa
	abbr -a la exa -a
	abbr -a ll exa -l
	abbr -a tree exa --tree
	abbr -a ps procs
	abbr -a grep rg

	# git
	abbr -a gc git commit -m 
	abbr -a ga git add .
	abbr -a glg git log --oneline --graph --color=always
	abbr -a grh git reset --soft HEAD^
	abbr -a gdf git diff
	abbr -a gp git pull

    abbr -a vim nvim
	# alias pbcopy="xclip -selection c"
	alias rm="trash-put"
	alias open="explorer.exe"
	
    set fish_cursor_default line
    set fish_cursor_insert line
	
	fish_add_path $HOME/.cargo/bin
	fish_add_path $HOME/.local/bin
	fish_add_path $HOME/.volta/bin
end

set -gx VOLTA_HOME "$HOME/.volta"

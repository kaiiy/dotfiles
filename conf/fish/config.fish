if status is-interactive
	set -x LANG C.UTF-8

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
	abbr -a gcmsg git commit -m 
	abbr -a gaa git add .
	abbr -a glg git log --oneline --graph
	abbr -a grh git reset --soft HEAD^
	abbr -a gdf git diff

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

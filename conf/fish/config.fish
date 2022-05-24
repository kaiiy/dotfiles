if status is-interactive
    abbr -a sd pushd
    abbr -a pd popd
	
	# rust alt command
	abbr -a pcat cat
    abbr -a cat bat 
	abbr -a ls exa
	abbr -a la exa -a
	abbr -a ll exa -l

	# git
	abbr -a gcmsg git commit -m 
	abbr -a gaa git add .
	abbr -a glg git log --oneline --graph
	abbr -a grh git reset --soft HEAD^
	abbr -a gdf git diff

    alias vim="nvim"
	# alias pbcopy="xclip -selection c"
	alias rm="trash-put"
	alias open="explorer.exe"
	
    set fish_cursor_default line
    set fish_cursor_insert line

	fish_add_path ~/.local/bin
end

set -x LANG C.UTF-8
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx PATH "$HOME/.cargo/bin" $PATH 


if status is-interactive
    abbr -a sd pushd
    abbr -a pd popd

    alias cat="batcat"
	alias ls="exa"

	abbr -a gl git log --oneline --graph

    alias vim="nvim"
	alias pbcopy="xclip -selection c"
	alias rm="trash-put"
	alias python="python3.10"
	alias pip="pip3.10"
	alias open="explorer.exe"
	
    set fish_cursor_default line
    set fish_cursor_insert line

	fish_add_path ~/.local/bin
end

set -x LANG C.UTF-8
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH


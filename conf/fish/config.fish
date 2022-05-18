if status is-interactive
    alias sd="pushd"
    alias pd="popd"
    alias bat="batcat"
    alias la="ls -a"
    alias vim="nvim"
	alias rv="rmtar"
	alias pbcopy="xclip -selection c"
	alias rm="trash-put"
	alias python="python3.10"
	alias pip="pip3.10"
	alias open="explorer.exe"
	abbr -a gl git log --oneline --graph

    set fish_cursor_default line
    set fish_cursor_insert line

	fish_add_path ~/.local/bin
end

set -x LANG C.UTF-8
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH


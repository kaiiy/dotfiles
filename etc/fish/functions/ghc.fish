function ghc
    set selected_repo (gh repo list --json name --jq '.[].name' -L 1000 | fzf)
    if test -n "$selected_repo"
        gh repo clone $selected_repo
    else
        echo "No repository selected, clone operation aborted."
    end
end

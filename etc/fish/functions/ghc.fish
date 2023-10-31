function ghc
    set all_repo_names (gh repo list --json name --jq '.[].name' -L 1000)
    set all_repo_names_str (string join "\n" $all_repo_names)

    if test (count $argv) -eq 1
        set repo_name $argv[1]
        set matched_repo (printf $all_repo_names_str | grep $repo_name)
        if test (count $matched_repo) -eq 1
            gh repo clone $matched_repo
            return
        end
    end

    set selected_repo (printf $all_repo_names_str | fzf)
    if test -n "$selected_repo"
        gh repo clone $selected_repo
    else
        echo "No repository selected, clone operation aborted."
    end
end
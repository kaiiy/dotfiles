function ghc
    set all_repo_names (gh repo list --json name --jq '.[].name' -L 1000)
    set all_repo_names_str (string join "\n" $all_repo_names)

    # If a repo name is provided as an argument, try to match it exactly
    if test (count $argv) -eq 1
        set repo_name $argv[1]
        set matched_repo (printf $all_repo_names_str | grep -F "$repo_name")
        set matched_repo_count (count $matched_repo)

        if test $matched_repo_count -eq 1
            gh repo clone $matched_repo
            return
        else if test $matched_repo_count -gt 1
            set matched_repo_str (string join "\n" $matched_repo)
            _ghc (printf $matched_repo_str | fzf)
            return
        end
    end

    # Otherwise, let the user select a repo from the list
    _ghc (printf $all_repo_names_str | fzf)
end

# Helper function to clone a specific repo
function _ghc
    set repo $argv[1]
    if test -n "$repo"
        gh repo clone $repo
    else
        echo "No repository selected, clone operation aborted."
    end
end

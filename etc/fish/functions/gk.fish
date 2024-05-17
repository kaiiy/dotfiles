function gk
    set no_push $argv[1]
    set_color green
    echo "[git add]"
    set_color normal
    git add .
    if git commit -m (string join ''  "wip: " $(date -Iseconds))
        if test "$no_push" != --no-push
            set_color green
            echo "[git push]"
            set_color normal
            git push
        else
            set_color yellow
            echo "[git push skipped]"
            set_color normal
        end
    end
end

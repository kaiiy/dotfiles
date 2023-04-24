function gk
    set_color green; echo "[git add]"; set_color normal
    git add .
    if git commit -m (string join ''  "wip: " $(date --rfc-3339='seconds'))
        set_color green; echo "[git push]"; set_color normal
        git push
    end
end

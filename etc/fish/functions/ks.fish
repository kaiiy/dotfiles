function ks
    set_color green; echo "[z]"; set_color normal
    z -c
    set_color green; echo "[Docker Image]"; set_color normal
    docker system prune -f 
    set_color green; echo "[.local/share/Trash]"; set_color normal
    mkdir -p ~/.local/share/Trash
    du -sh ~/.local/share/Trash/
    rm -rfv ~/.local/share/Trash/ | grep --color=never 'directory'
end

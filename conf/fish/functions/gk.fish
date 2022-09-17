# work only in Lab repositry 
function gk
    git add .
    if git commit -m (string join ''  "wip: " $(date --rfc-3339='seconds'))
        git push
    end
end

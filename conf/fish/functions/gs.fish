# work only in Lab repositry 
function gs
    if string match '*Lab*' $(pwd) >/dev/null 2>&1
        git add .
        if git commit -m (string join ''  "save: " $(date --rfc-3339='seconds'))
            git push
        end
    end
end

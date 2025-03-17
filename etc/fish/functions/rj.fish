# Remove junk files

function rj
    find . -type d -name node_modules -exec rm -rf {} \;
    find . -type f -name '*Zone.Identifier' -exec rm {} \;
    find . -type f -name '*.DS_Store' -exec rm {} \;
end

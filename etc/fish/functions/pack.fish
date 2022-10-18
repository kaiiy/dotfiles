function pack
    set t_file $argv[1]

    if string match -r '^.+\.zip$' $t_file >/dev/null
        unzip $t_file
    else
        zip "$t_file.zip" $t_file
    end
end

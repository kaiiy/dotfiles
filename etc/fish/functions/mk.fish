# Create a new directory with a name randomly selected
function mk
    set -l words apple banana carrot donut egg fish grape honey ice cream jam kiwi lemon mango nut orange pizza quiche rice strawberry tomato udon vanilla watermelon xigua yogurt zucchini
    for i in (seq 10)  # Attempt directory creation up to 10 times.
        set -l word $words[(random 1 (count $words))]  # Select a word randomly.
        set -l dir_name tmp.$word  # Generate the directory name.

        if not test -e $dir_name  # If a directory with the same name does not exist
            echo $dir_name
            mkdir $dir_name  # Create the directory.
            return 0  # Exit the function if successful.
        end
    end

    echo "Error: Unable to create directory after 10 attempts."
    return 1  # Return 1 to indicate failure.
end


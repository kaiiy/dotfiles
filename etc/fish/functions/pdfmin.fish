function pdfmin
    set input_file_path (string join '' (pwd) / $argv[1])
    set output_file_path (string replace .pdf .min.pdf $input_file_path)

    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output_file_path $input_file_path
end

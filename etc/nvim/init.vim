for conf_file in split(glob("~/.config/nvim/configs/*.vim")) 
	execute 'source' conf_file
endfor

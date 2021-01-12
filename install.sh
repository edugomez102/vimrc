#!/bin/bash

cd ~
if [ ! -d ".vim" ]; then
	mv vimrc .vim && cd .vim
	mkdir undor-dir sessions
	echo "Installing vimscript based plugins..."
	vim -c VimscriptPlugins -c qa
else
	echo "Do yo want to delete .vim?[y/N]"
	read -s del
	if [[ -z $del || $del == "y" ]]; then
		rm -rf .vim
	fi
fi


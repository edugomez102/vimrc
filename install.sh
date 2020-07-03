#!/bin/bash

cd ~
if [ ! -d ".vim" ]; then
	# echo "no existe"
	mv vimrc .vim && cd .vim
	mkdir undor-dir sessions
	vim -c VimscriptPlugins -c qa
else
	echo "Do yo want to delete .vim?[y/N]"
	read del
	if [[ -z $del || $del == "y" ]]; then
		echo "me vale"
		rm -rf .vim
	fi
fi


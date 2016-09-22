#!/bin/bash
if [ -f ~/.vimrc ];then
	echo "=> back up your vim configuration files"
	cp -rf ~/.vimrc  ~/vimrc.bak
	cp -rf ~/.vim	 ~/vim.bak  
	rm -rf ~/.vimrc 
	rm -rf ~/.vim
fi

cp -rf vim     ~/.vim 
cp -rf vimrc    ~/.vimrc

echo "=> install completed"


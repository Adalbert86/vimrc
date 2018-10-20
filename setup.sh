#!/bin/bash

_FILE=~/.bash_profile
_VIMFILE=~/.vimrc

if [ -e $_FILE ]
then
	mv $_FILE $_FILE.original
fi	

if [ -e $_VIMFILE ]
then
	mv $_VIMFILE $_VIMFILE.original
fi	

ln -s ~/.vim/bash/.bash_profile $_FILE
echo "source ~/.vim/myvimrc.vim" > $_VIMFILE
 

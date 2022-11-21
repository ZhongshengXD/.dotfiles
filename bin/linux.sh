#!/bin/bash
CURR_OS=$(uname)
if [[ "$CURR_OS" = *"Linux"* ]] ; then #if it is linux operating system
	mkdir ~/.TRASH   #creat a  ‘.TRASH’ directory in MY home directory
	mv .vimrc .bup_vimrc #change it name
	touch linuxsetup.log #creat a new file
	echo current .vimrc file was changed to .bup vimrc >> linuxsetup.log #plus a sentence 
	cat ~/ect/vimrc >> ~/.vimrc  #Redirect (overwrite) the contents of the etc/vimrc file to a file called ‘.vimrc’
	echo ‘source ∼/.dotfiles/etc/bashrc custom’ >> ~/.bashrc #add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file

fi

if [[ "$CURR_OS" != *"Linux"* ]] ; #if it isn't linux

then
    touch linuxsetup.log  #Creat a file named linuxsetup.log
    echo ThisOperatingSystemIsNot'Linux' >> linuxsetup.log #plus one sentence
fi 



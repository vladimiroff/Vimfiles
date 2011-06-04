# Vimfiles

My current .vim folder

## Why?

Several reasons:

* Couple friends of mine wanted me to share my .vim folder with them
* I want a fast way to synchronize my vimfiles between the computers I use
* It would be nice if I receive some ideas for handy plugins, settings...

## How to install?

First of all backup your current ~/.vim/


    cd ~
    git clone https://Vladimiroff@github.com/Vladimiroff/Vimfiles.git #press enter, for password
    cd Vimfiles
    git submodule init
    git submodule update
    cd ..
    mv Vimfiles .vim

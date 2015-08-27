install:
	ln -fs ~/.vim/vimrc ~/.vimrc
	git submodule init
	git submodule update
	vim +PluginInstall +qall

update:
	git pull
	git submodule init
	git submodule update
	vim +PluginClean +PluginInstall +PluginUpdate +qall

install-nvim:
	ln -s ~/.vimrc ~/.nvimrc
	ln -s ~/.vim ~/.nvim

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

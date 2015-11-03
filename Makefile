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
	[[ -d ~/.config/nvim ]] || ln -s ~/.vim ~/.config/nvim
	[[ -f ~/.config/nvim/init.vim ]] || ln -s ~/.vimrc ~/.config/nvim/init.vim

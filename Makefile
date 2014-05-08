install:
	ln -fs ~/.vim/vimrc ~/.vimrc
	git submodule init
	git submodule update
	vim +BundleInstall +qall

update:
	git pull
	git submodule init
	git submodule update
	vim +BundleClean +BundleInstall +BundleUpdate +qall

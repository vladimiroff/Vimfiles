install:
	ln -fs ~/.vim/vimrc ~/.vimrc
	git submodule init
	git submodule update
	cd bundle/pyflakes/ && git submodule init && git submodule update

update:
	git pull origin master
	git submodule init
	git submodule update

bundle-update:
	git submodule sync
	git submodule foreach "git checkout master; git pull origin master; echo"


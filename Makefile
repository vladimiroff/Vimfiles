install:
	ln -fs ~/.vim/vimrc ~/.vimrc
	vim +PlugInstall +qall

update:
	vim +PlugClean +PlugInstall +PlugUpdate
	vim +PlugSnapshot +"set buftype=" +"w ~/.vim/plugs-snapshot.vim" +"qa!"


install-nvim:
	[[ -d ~/.config/nvim ]] || ln -s ~/.vim ~/.config/nvim
	[[ -f ~/.config/nvim/init.vim ]] || ln -s ~/.vimrc ~/.config/nvim/init.vim

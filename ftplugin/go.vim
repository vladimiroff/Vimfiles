set rtp+=$GOROOT/misc/vim
set noexpandtab
set tabstop=4
set shiftwidth=4
set makeprg=go\ run\ %

nnoremap <buffer> <leader> K <Plug>(godoc-keyword)
nnoremap <buffer> <silent> K 5k

setlocal rtp+=$GOROOT/misc/vim
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal makeprg=go\ run\ %
setlocal listchars=tab:\ \ ,trail:.,extends:#,nbsp:.

nnoremap <buffer> <leader> K <Plug>(godoc-keyword)
nnoremap <buffer> <silent> K 5k

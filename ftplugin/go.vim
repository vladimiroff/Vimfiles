setlocal rtp+=$GOROOT/misc/vim
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal makeprg=go\ run\ %
setlocal listchars=tab:\ \ ,trail:.,extends:#,nbsp:.
setlocal tags+=~/dotfiles/tags/go.tags
setlocal foldmethod=syntax

nnoremap <buffer> <leader> K <Plug>(godoc-keyword)
nnoremap <buffer> <silent> K 5k
map <Leader>ra :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>rf :wa<CR> :GolangTestFocused<CR>

RunCommand !go run %

autocmd BufWritePre <buffer> :Fmt silent

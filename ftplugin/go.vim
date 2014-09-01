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
map <Leader>ot :AV<CR>
map <Leader>oT :AT<CR>
map <Leader>ra :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>rf :wa<CR> :GolangTestFocused<CR>

RunCommand !go run %

autocmd BufWritePre <buffer> :Fmt silent

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

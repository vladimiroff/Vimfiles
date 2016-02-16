setlocal rtp+=$GOROOT/misc/vim
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal makeprg=go\ run\ %
setlocal listchars=tab:\ \ ,trail:.,extends:#,nbsp:.
setlocal tags+=~/dotfiles/tags/go.tags

au FileType go nmap <Leader>K <Plug>(go-doc-vertical)
au FileType go nmap <Leader>S <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

RunCommand !go run %

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

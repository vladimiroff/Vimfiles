setlocal rtp+=$GOROOT/misc/vim
setlocal noexpandtab
setlocal tabstop=8
setlocal shiftwidth=8
setlocal makeprg=go\ run\ %
setlocal listchars=tab:\ \ ,trail:.,extends:#,nbsp:.

let g:go_fmt_autosave = 0
let g:ale_fix_on_save = 1
let g:go_def_mapping_enabled = 0

au FileType go nmap <Leader>S <Plug>(go-implements)
au FileType go nmap <Leader>I <Plug>(go-info)
au FileType go nmap <Leader>a <Plug>(go-alternate-edit)
au FileType go nmap <Leader>A <Plug>(go-alternate-vertical)
au FileType go nmap gP        :GoDeclsDir<CR>

RunCommand !go run % <args>

let b:ale_linters =  ['gopls']
let b:ale_fixers =  ['goimports']

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

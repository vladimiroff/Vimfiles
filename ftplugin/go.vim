setlocal rtp+=$GOROOT/misc/vim
setlocal noexpandtab
setlocal tabstop=8
setlocal shiftwidth=8
setlocal makeprg=go\ run\ %
setlocal listchars=tab:\ \ ,trail:.,extends:#,nbsp:.
setlocal tags+=~/dotfiles/tags/go.tags
setlocal omnifunc=gocomplete#Complete


" Use experimental fmt in order to avoid constantly closing folds on save.
let g:go_fmt_experimental = 1

" goimports is a drop-in replacement of gofmt.
let g:go_fmt_command = "goimports"

let g:go_jump_to_error = 0

let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>K <Plug>(go-doc-vertical)
au FileType go nmap <Leader>S <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>I :exe "GoImport ". expand('<cword>') <cr>
au FileType go nmap <Leader>a <Plug>(go-alternate-edit)
au FileType go nmap <Leader>A <Plug>(go-alternate-vertical)
au FileType go nmap gD        <Plug>(go-def-tab)
au FileType go nmap <Leader>B <Plug>(go-doc-browser)
au FileType go nmap gP        :GoDeclsDir<CR>

RunCommand !go run %

let g:ale_linters = {
    \ 'go': ['gobuild', 'gofmt', 'govet'],
\ }

if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
endif

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

set hidden

nmap <buffer> gd <Plug>(rust-def)
nmap <buffer> gs <Plug>(rust-def-split)
nmap <buffer> gx <Plug>(rust-def-vertical)
nmap <buffer> K <Plug>(rust-doc)

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

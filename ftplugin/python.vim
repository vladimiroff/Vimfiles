compiler python

map <C-i> :w<CR>:!python %<CR>

"PyFlakes
let g:pyflakes_use_quickfix = 1

" Pylint
let g:pylint_onwrite = 0

" Reindent.py
map ff <Plug>reindent

" IPython
let g:ipy_perform_mappings=0

nnoremap <buffer> <Leader>st :call append(line('.')-1, ['import ipdb; ipdb.set_trace()'])<CR>

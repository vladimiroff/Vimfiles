setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

compiler python

"PyFlakes
let g:pyflakes_use_quickfix = 1

" Pylint
let g:pylint_onwrite = 0

" Reindent.py
map ff <Plug>reindent

" IPython
let g:ipy_perform_mappings=0

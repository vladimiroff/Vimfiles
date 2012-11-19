compiler python
setlocal foldmethod=indent

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501,E128"

" Enable python folding
let g:pymode_folding = 0

" Key for show python documentation
let g:pymode_doc_key = '<leader>K'

" Run linter on the fly
let g:pymode_lint_onfly = 1

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 0

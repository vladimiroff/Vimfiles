compiler python
setlocal foldmethod=indent

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501,E128"

" Enable python folding
let g:pymode_folding = 0

" Key for show python documentation
let g:pymode_doc = 0

" Run linter on the fly
let g:pymode_lint_onfly = 0

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 0

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0

" Jedi
let g:jedi#auto_initialization = 0
let g:jedi#goto_assignments_command = "<leader>G"
let g:jedi#goto_definitions_command = "<leader>D"
let g:jedi#documentation_command = "<leader>K"
let g:jedi#rename_command = "<leader>R"
let g:jedi#completions_command = "<C-Space>"

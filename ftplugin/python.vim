compiler python

set cursorline
set cursorcolumn

" python-mode settings
let g:pymode_breakpoint = 1
let g:pymode_doc = 1
let g:pymode_folding = 1
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = "E501,E128"
let g:pymode_lint_on_write = 1
let g:pymode_lint_onfly = 0
let g:pymode_motion = 1
let g:pymode_rope = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_goto_definition_cmd = 'tabnew'
let g:pymode_run = 1
let g:pymode_trim_whitespaces = 0
let g:pymode_virtualenv = 1

" python-mode bindings
let g:pymode_breakpoint_bind = '<leader>bt'
let g:pymode_doc_bind = '<leader>k'
let g:pymode_rope_completion_bind = '<C-x><C-o>'
let g:pymode_run_bind = '<leader>r'

" Disable syntastic
let g:syntastic_ignore_files = ['\.py$']

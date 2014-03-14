" NERD tree:
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode = 3
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinSize = 35
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeIgnore = [
      \ '\~$',
      \ '\.o$',
      \ '\.hi$',
      \ '\.pyc',
      \ '\.swp'
      \ ]

" Don't map over J and K
let g:NERDTreeMapJumpFirstChild = '-'
let g:NERDTreeMapJumpLastChild  = '-'


" Snippet settings:
let g:snippets_dir = expand('~/.vim/snippets/')

" Omnicppcomplete options:
let OmniCpp_NamespaceSearch     = 1 " -> True
let OmniCpp_ShowPrototypeInAbbr = 1 " -> True
let OmniCpp_SelectFirstItem     = 2 " Select item, but don't insert
let OmniCpp_LocalSearchDecl     = 1 " Search regardless of bracket position
let OmniCpp_MayCompleteDot      = 1 " Automatically complete
let OmniCpp_MayCompleteArrow    = 1 " Automatically complete

" Splitjoin
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align                = 1

" Taglist
let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth = 45

" GitV
let g:Gitv_OpenHorizontal = 1
let g:Gitv_OpenPreviewOnLaunch = 0

" Notes
let g:notes_directories = ['~/Dropbox/Notes', ]
let g:notes_suffix = '.md'

" Taglist
let g:Tlist_Use_Right_Window=1
"
" python-mode settings
let g:pymode_breakpoint = 1
let g:pymode_doc = 1
let g:pymode_folding = 1
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = "E501,E128,E226"
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
let g:pymode_rope_completion_bind = '<C-space>'
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_run_bind = '<leader>r'

" auto-pairs
let g:AutoPairsFlyMode = 1

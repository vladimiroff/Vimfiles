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

" Multichange
let g:multichange_save_position = 1

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
let g:Gitv_DoNotMapCtrlKey = 1

" Notes
let g:notes_directories = ['~/storage/notes', ]
let g:notes_suffix = '.md'

" Taglist
let g:Tlist_Use_Right_Window=1

" jedi
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

" TabMan
let g:tabman_side = 'right'
let g:tabman_number = 0
let g:tabman_specials = 1
let g:tabman_width = 30

" CtrlP
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:ctrlp_cmd = 'CtrlPMRUFiles'

" AutoTag
let g:autotagTagsFile = '.tags'

" markology
let g:markology_ignore_type = "hmpr"
let g:markology_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" peekaboo
let g:peekaboo_window = 'vertical botright 50new'

" neomake
autocmd! BufWritePost * Neomake

" Undotree
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1

" Grepper
let g:grepper = {
    \ 'highlight': 1,
    \ 'tools': ['grep', 'git', 'ack'],
    \ }

" Terminus
let g:TerminusBracketedPaste=0

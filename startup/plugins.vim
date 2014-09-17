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

" jedi
let g:jedi#show_call_signatures = "1"
let g:jedi#use_splits_not_buffers = "right"

" TabMan
let g:tabman_side = 'right'
let g:tabman_number = 0

" CtrlP
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

" AutoTag
let g:autotagTagsFile = '.tags'

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {
        \ 'branch'   : '',
        \ 'readonly' : '[RO]',
        \ 'linenr'   : 'L/C',
        \ }
endif


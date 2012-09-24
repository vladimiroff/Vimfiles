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
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

" Don't map over J and K
let g:NERDTreeMapJumpFirstChild = '-'
let g:NERDTreeMapJumpLastChild  = '-'


" Snippet settings:
let g:snippets_dir = expand('~/.vim/snippets/')
let g:snips_author = 'Kiril Vladimirov'

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

" PySmell omnicompletion
autocmd FileType python set omnifunc=pysmell#Complete

" GitV
let g:Gitv_OpenHorizontal = 1
let g:Gitv_OpenPreviewOnLaunch = 0

" TabMan
let g:tabman_side = 'right'

" Sparkup
let g:sparkupExecuteMapping = '<C-E>'
let g:sparkupNextMapping = '-'

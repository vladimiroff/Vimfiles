" NERD tree:
let g:NERDTreeMouseMode = 3
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinSize = 45
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
let g:snips_author = 'Kiril Vladimirov'

" Omnicppcomplete options:
let OmniCpp_NamespaceSearch     = 1 " -> True
let OmniCpp_ShowPrototypeInAbbr = 1 " -> True
let OmniCpp_SelectFirstItem     = 2 " Select item, but don't insert
let OmniCpp_LocalSearchDecl     = 1 " Search regardless of bracket position
let OmniCpp_MayCompleteDot      = 1 " Automatically complete
let OmniCpp_MayCompleteArrow    = 1 " Automatically complete

" Javascript indent
let g:SimpleJsIndenter_BriefMode = 1

" Splitjoin
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align                = 1

" Taglist
let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth = 45

"PyFlakes
let g:pyflakes_use_quickfix = 0

" Pylint
let g:pylint_onwrite = 0

" Reindent.py
map ff <Plug>reindent

" Vladimiroff's vimfile

" Forget about Vi compatibility.
set nocompatible

" Load plugins with vim-plug
runtime! plugs.vim

" Enable filetypes
filetype on
filetype plugin on
filetype plugin indent on
syntax on

runtime! startup/commands.vim
runtime! startup/cyrillic.vim
runtime! startup/mappings.vim
runtime! startup/plugins.vim
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Close preview split when completion is done
if exists('#CompleteDone')
    autocmd CompleteDone <buffer> pclose
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Switch between buffers without saving
set hidden

" Colors
set t_Co=256
set background=dark
let g:lucius_use_bold = 1
let g:lucius_use_underline = 1
let g:lucius_no_term_bg = 1
let g:lucius_style = "light"
let g:lucius_contrast = "high"
let g:lucius_contrast_bg = "high"
colorscheme lucius

if has("gui_running")
    set background=light
    set lines=45
    set columns=120
    set guioptions-=T
endif

" Mouse support
set mouse=a
if !has('nvim')
    set ttymouse=xterm2
endif

" Send more characters for faster re-draws
set ttyfast

" Status line and fillchars
set fillchars=stl:-,stlnc:-,vert:│,fold:\ ,diff:-
set laststatus=2

" Disable swap files
set noswapfile

" Backups
set backup
set backupdir=~/.vim/backups

" Show line numbers
set number

" Indent stuff
set smartindent
set autoindent

" Disable line wrapping
set nowrap

" Command line history
set history=50

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Search options
set incsearch
set hlsearch

" Matching braces
set showmatch
set matchtime=3

" Default encoding
set encoding=utf-8

" Fancy title, based on opened file
set title

" We all know, what is that for
set nopaste

" Whitespace
set list
set listchars=tab:».,trail:.,extends:#,nbsp:.

" Command-line
set cmdheight=1
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*.obj,.git,*pyc,*pyo,*.pid,*.sock

" Timeouts
set notimeout
set ttimeout
set ttimeoutlen=200

" Clipbaord
if has('nvim')
  set clipboard+=unnamedplus
elseif has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Completion options
set completefunc=syntaxcomplete#Complete
set completeopt=longest,menuone,preview

" Don't leave spaces between joined lines
set nojoinspaces

" Use tags from .tags file
set tags+=.tags

" NeoVim handles <ESC> keys as <M+key>
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

" Persistent undo
if has("persistent_undo")
    set undodir=~/.vim/undodir/
    set undofile
endif

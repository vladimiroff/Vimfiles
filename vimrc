" Vladimiroff's vimfile

call pathogen#runtime_append_all_bundles()
runtime! startup/cyrillic.vim
runtime! startup/mappings.vim

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Templates
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl
nnoremap <C-j> /<+.\{-1,}+><CR>c/+>/e<CR>
inoremap <C-j> <Esc>/<+.\{-1,}+><CR>c/+>/e<CR>

" Enable filetypes
filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Forget Vi compatibility.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Decrease the key + command lag
"set timeout=500

" Switch between buffers without saving
set hidden

" Enable mouse support
set mouse=a

" Colors
colorscheme candyman
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set t_Co=256

" Status Line and Cursor highlighting
set statusline=%F%m%r%h%w\ %y\ [ascii=\%03.3b\|hex=\%02.2B]\ [%04l\|%04v][%p%%]\ [%L\ lines]
set laststatus=2
set cursorline
set cursorcolumn

" Tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Disable the silly backups, we're not 90's
set nobackup
set noswapfile
set nowritebackup

" Show line numbers
set number

" Indent stuff
set smartindent
set autoindent

" Better line wrapping
set nowrap

" Command line history
set history=50

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Search options
set incsearch
set ignorecase
set smartcase
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

" Unwanted whitespace
set list
set listchars=eol:°,tab:».,trail:.,extends:#,nbsp:.

" NERDTree Settings
let g:NERDTreeIgnore = ['\.pyc$','\.swp$', '\~$']
let g:NERDTreeMouseMode = 3
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinSize = 25
let NERDTreeHijackNetrw = 0

" Command-line
set cmdheight=1
set wildmenu
set wildmode=list:longest,full

" Timeouts
set notimeout
set ttimeout
set ttimeoutlen=200

" Clipbaord
set clipboard=unnamedplus


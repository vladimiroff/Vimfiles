" Vladimiroff's vimfile

call pathogen#runtime_append_all_bundles()

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

" Forget Vi compatibility.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Switch between buffers without saving
set hidden

" Enable mouse support
set mouse=a

" Colors
set t_Co=256
colorscheme wombat256i
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
if has("gui_running")
    exec "hi Normal ctermbg=White ctermfg=Black guifg=White guibg=Black"
    set lines=45
    set columns=120
    set guioptions-=T
endif

" Status Line and Cursor highlighting
set statusline=%F%m%r%h%w\ %y\ [%04l\|%04v][%p%%]\ [%L\ lines]
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

" Whitespace
set list
set listchars=eol:°,tab:».,trail:.,extends:#,nbsp:.

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

" Completion options
set completeopt=longest,menuone,preview

" Vladimiroff's vimfile

" Forget about Vi compatibility.
set nocompatible

" Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'AndrewRadev/go-oracle.vim'
Bundle 'AndrewRadev/inline_edit.vim'
Bundle 'AndrewRadev/linediff.vim'
Bundle 'AndrewRadev/multichange.vim'
Bundle 'AndrewRadev/sideways.vim'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'AndrewRadev/switch.vim'
Bundle 'AndrewRadev/vim-golang'
Bundle 'AndrewRadev/whitespaste.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'Vladimiroff/gocode.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'benmills/vimux'
Bundle 'benmills/vimux-golang'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'corntrace/bufexplorer'
Bundle 'davidhalter/jedi-vim'
Bundle 'godlygeek/tabular'
Bundle 'gregsexton/gitv'
Bundle 'julienr/vimux-pyutils'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/tabman.vim'
Bundle 'koron/nyancat-vim'
Bundle 'mattboehm/vim-unstack'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'ngn/vim-mines'
Bundle 'othree/html5.vim'
Bundle 'phleet/vim-mercenary'
Bundle 'qqshfox/vim-tmux'
Bundle 'rainerborene/vim-pony'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tristen/vim-sparkup'
Bundle 'troydm/zoomwintab.vim'
Bundle 'vim-scripts/AutoTag'
Bundle 'vim-scripts/taglist.vim'
Bundle 'wellle/tmux-complete.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'

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
autocmd CompleteDone <buffer> pclose

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Switch between buffers without saving
set hidden

" Colors
set t_Co=256
set background=dark
colorscheme andrew

if has("gui_running")
    set background=light
    set lines=45
    set columns=120
    set guioptions-=T
endif

" Status line and fillchars
set fillchars=stl:-,stlnc:-,vert:│,fold:\ ,diff:-
set statusline=%F%m%r%h%w\ %y\ [%04l\|%04v][%p%%]\ %=[%L\ lines]%{fugitive#statusline()}
set laststatus=2

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
set listchars=tab:».,trail:.,extends:#,nbsp:.

" Enable cursorline and cursorcolumn
set cursorline
set cursorcolumn

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
set clipboard=unnamedplus

" Completion options
set completefunc=syntaxcomplete#Complete
set completeopt=longest,menuone,preview

" Don't leave spaces between joined lines
set nojoinspaces

" Syntax coloring lines that are too long just slows down the world
set smc=140

" Use tags from .tags file
set tags+=.tags

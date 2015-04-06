" Vladimiroff's vimfile

" Forget about Vi compatibility.
set nocompatible

" Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'AndrewRadev/go-oracle.vim'
Plugin 'AndrewRadev/inline_edit.vim'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'AndrewRadev/multichange.vim'
Plugin 'AndrewRadev/sideways.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'AndrewRadev/vim-golang'
Plugin 'AndrewRadev/whitespaste.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'benmills/vimux'
Plugin 'benmills/vimux-golang'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'corntrace/bufexplorer'
Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/gitv'
Plugin 'jeetsukumaran/vim-markology'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/tabman.vim'
Plugin 'koron/nyancat-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattboehm/vim-unstack'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'msanders/snipmate.vim'
Plugin 'ngn/vim-mines'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'othree/html5.vim'
Plugin 'phleet/vim-mercenary'
Plugin 'qqshfox/vim-tmux'
Plugin 'rainerborene/vim-pony'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'slim-template/vim-slim'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tristen/vim-sparkup'
Plugin 'troydm/zoomwintab.vim'
Plugin 'vim-scripts/AutoTag'
Plugin 'wellle/tmux-complete.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

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
colorscheme andrew

if has("gui_running")
    set background=light
    set lines=45
    set columns=120
    set guioptions-=T
endif

" Status line and fillchars
set fillchars=stl:-,stlnc:-,vert:│,fold:\ ,diff:-
set laststatus=2

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
if has('unnamedplus')
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

call plug#begin()

" performs diffs on blocks of code with :Linediff
Plug 'AndrewRadev/linediff.vim'

" edits a word and have the change propagated throughout the buffer or selection
Plug 'AndrewRadev/multichange.vim'

" moves function arguments left and right
Plug 'AndrewRadev/sideways.vim'

" reopen last closed window
Plug 'AndrewRadev/undoquit.vim'

" simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'

" switches segments of text with predefined replacements
Plug 'AndrewRadev/switch.vim'

" execute a :command and show the output in a temporary buffer
Plug 'AndrewRadev/bufferize.vim'

" delete wrapping if-clauses, try-catch blocks, and similar constructs
Plug 'AndrewRadev/deleft.vim'

" snippets
Plug 'SirVer/ultisnips'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ivalkeen/nerdtree-execute', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

" highlights trailing whitespace in red and provides :StripWhitespace to fix it
Plug 'ntpeters/vim-better-whitespace'

" provides a much simpler way to use some motions in vim
Plug 'easymotion/vim-easymotion'

" git repository viewer
Plug 'rbong/vim-flog'

" mark visualization, navigation and management
Plug 'jeetsukumaran/vim-markology'

" nord color scheme
Plug 'arcticicestudio/nord-vim'

" peek at register contents
Plug 'junegunn/vim-peekaboo'

" tab management
Plug 'kien/tabman.vim'

" tag outline viewer
Plug 'liuchengxu/vista.vim'

" undo history visualizer
Plug 'mbbill/undotree'

" defines identation levels as a text object
Plug 'michaeljsmith/vim-indent-object'

" comment stuff out
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" enable repeating supported plugin maps with .
Plug 'tpope/vim-repeat'

" readline style insertion
Plug 'tpope/vim-rsi'

" quoting/parenthesizing
Plug 'tpope/vim-surround'

" update entries in a tags file automatically when saving
Plug 'craigemery/vim-autotag'

" searching in files easier
Plug 'mhinz/vim-grepper'

" light and configurable statusline/tabline
Plug 'itchyny/lightline.vim'

" shell implementation needed by vim-delve
Plug 'Shougo/vimshell.vim'

" syntax-aware code formatting
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

" automatic window resizing
Plug 'camspiers/lens.vim'

" jump to definitions and refenreces
Plug 'pechorin/any-jump.vim'

" parse stack traces
Plug 'mattboehm/vim-unstack'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" popdef
Plug 'teppey/popdef'

" interesting words highligting
Plug 'lfv89/vim-interestingwords'

""" filetypes

" git
Plug 'tpope/vim-git', { 'for': 'git' }

" go
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'benmills/vimux-golang', { 'for': 'go' }
Plug 'sebdah/vim-delve', { 'for': 'go' }

" prolog
Plug 'adimit/prolog.vim', { 'for': 'prolog' }

"python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }

" rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" tex
Plug 'lervag/vimtex', { 'for': ['bib', 'tex'] }
Plug 'godlygeek/tabular'

" tmux
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }

" yaml
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }

" GraphQL
Plug 'jparise/vim-graphql', { 'for': 'graphql' }

" dart
Plug 'dart-lang/dart-vim-plugin'

" perl
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

" hcl
Plug 'jvirtanen/vim-hcl'

" kdl
Plug 'imsnif/kdl.vim'

call plug#end()

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

" snippets
Plug 'SirVer/ultisnips'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ivalkeen/nerdtree-execute', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

" looks up words in an online thesaurus
Plug 'beloglazov/vim-online-thesaurus'

" interacts with tmux
Plug 'benmills/vimux'

" highlights trailing whitespace in red and provides :FixWhitespace to fix it
Plug 'bronson/vim-trailing-whitespace'

" fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

" provides a much simpler way to use some motions in vim
Plug 'easymotion/vim-easymotion'

" git repository viewer
Plug 'gregsexton/gitv'

" mark visualization, navigation and management
Plug 'jeetsukumaran/vim-markology'

" lucius color scheme
Plug 'jonathanfilip/vim-lucius'

" nord color scheme
Plug 'arcticicestudio/nord-vim'

" peek at register contents
Plug 'junegunn/vim-peekaboo'

" tab management
Plug 'kien/tabman.vim'

" tag outline viewer
Plug 'majutsushi/tagbar'

" undo history visualizer
Plug 'mbbill/undotree'

" defines identation levels as a text object
Plug 'michaeljsmith/vim-indent-object'

" comment stuff out
Plug 'tpope/vim-commentary'

" git wrapper
Plug 'tpope/vim-fugitive'

" continuously update session files
Plug 'tpope/vim-obsession'

" enable repeating supported plugin maps with .
Plug 'tpope/vim-repeat'

" readline style insertion
Plug 'tpope/vim-rsi'

" quoting/parenthesizing
Plug 'tpope/vim-surround'

" update entries in a tags file automatically when saving
Plug 'vim-scripts/AutoTag'

" insert mode completion of words in adjacent tmux panes
Plug 'wellle/tmux-complete.vim'

" notes
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" searching in files easier
Plug 'mhinz/vim-grepper'

" asynchonous lint engine
Plug 'w0rp/ale'

" language server protocol
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" light and configurable statusline/tabline
Plug 'itchyny/lightline.vim'

" shell implementation needed by vim-delve
Plug 'Shougo/vimshell.vim'

"" filetypes

" git
Plug 'tpope/vim-git', { 'for': 'git' }

" go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'benmills/vimux-golang', { 'for': 'go' }
Plug 'sebdah/vim-delve', { 'for': 'go' }

" markdown preview
Plug 'shime/vim-livedown', { 'for': 'markdown' }

" prolog
Plug 'adimit/prolog.vim', { 'for': 'prolog' }

"python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'mattboehm/vim-unstack', { 'for': 'python' }

" rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" tex
Plug 'lervag/vimtex', { 'for': ['bib', 'tex'] }
Plug 'godlygeek/tabular'

" thrift
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }

" tmux
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }

" yaml
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }

" GraphQL
Plug 'jparise/vim-graphql', { 'for': 'graphql' }

call plug#end()

" Tagbar
map <Leader>t :TagbarToggle<CR>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTreeFind<CR>

" Undotree
map <Leader>u :UndotreeToggle<CR>

" Tabs
nnoremap ,t :tabnew<cr>
nnoremap ,T :tabedit %<cr>gT:quit<cr>
nmap <BS> gT
nmap <C-h> gT
nmap <C-l> gt
map qq    <Esc>:Q<CR>

" Some little, but handy mappings
command! Q q

" Save
command! W w
nnoremap <Leader>w :w<CR>

" Save and quit
nnoremap <Leader>x :x<CR>

" Save as root
cmap w!! w !sudo tee % >/dev/null

" Make Y behave like C and D
map Y y$

" Rescan the buffer from start and fix highlighting
nnoremap <Leader>S <Esc>:syntax sync fromstart<CR>

" Splitjoin
nnoremap =j :SplitjoinJoin<CR>
nnoremap =s :SplitjoinSplit<CR>

" Switch
let g:switch_mapping = "-"

" Resizing splits
map <C-e>h <C-w>10<
map <C-e>j <C-W>10-
map <C-e>k <C-W>10+
map <C-e>l <C-w>10>

" Nicer single-line visual mode
nnoremap vv _v$h

" Reindent without losing the selection
xnoremap > >gv
xnoremap < <gv

" Spellcheck
map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>sb :setlocal spell spelllang=bg_bg<CR>
map <Leader>sn :setlocal nospell<CR>

" Prettify and minify json
map <leader>jt  <Esc>:%!python -m json.tool<CR>:StripWhitespace<CR>
map <leader>jj  <Esc>ggVG:join<CR>

" Mutlichange
let g:multichange_mapping = 'sm'
let g:multichange_motion_mapping = "m"

" Sideways
nnoremap <Leader>< :SidewaysLeft<CR>
nnoremap <Leader>> :SidewaysRight<CR>

" Jump to next and previous tags
nnoremap ]t :tnext<CR>
nnoremap [t :tprev<CR>

" CtrlP
let g:ctrlp_map = 'gp'
nnoremap g. :CtrlPTag<cr>

" unstack
let g:unstack_mapkey='<Leader>T'

" vimux
map <Leader>c :VimuxPromptCommand<CR>
map <Leader>C :VimuxRunLastCommand<CR>

" TabMan
let g:tabman_toggle = 'gM'

" Search for current word in the online thesaurus.com
nnoremap <Leader>D :OnlineThesaurusCurrentWord<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"

" Grepper
nnoremap <leader>/ :Grepper -tool grep<cr>
nnoremap <leader>* :Grepper -tool grep -cword -noprompt<cr>
nnoremap <leader>G :Grepper -tool git<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" livedown
nmap <leader>md :LivedownToggle<CR>

" Repeat last macro
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'

" List open buffers and expect a number which of them to open
nnoremap <leader>be :ls<CR>:b

" fugitive
map <leader>g :Gstatus<CR>

" Taglist
map <Leader>t :TlistToggle<CR>

" NERDTree
map gn :NERDTreeToggle<CR>

" Gundo
map <Leader>u :GundoToggle<CR>

" Tabs
nnoremap ,t :tabnew<cr>
nnoremap ,T :tabedit %<cr>gT:quit<cr>
map <C-h> gT
map <C-l> gt
map qq    <Esc>:Q<CR>

" Some little, but handy mappings
command! Q q
command! W w
cmap w!! w !sudo tee % >/dev/null
map <Space> :

" Make Y behave like C and D
map Y y$

" Splitjoin
nnoremap =j :SplitjoinJoin<CR>
nnoremap =s :SplitjoinSplit<CR>

" Switch
nnoremap - :Switch<CR>

" Better Esc
imap jk <Esc>l
imap kj <Esc>l

" Resizing splits
map <C-e>h <C-w>10<
map <C-e>j <C-W>10-
map <C-e>k <C-W>10+
map <C-e>l <C-w>10>

" Faster scrolling:
map H 5h
map J 5j
map K 5k
map L 5l

" Paste in insert mode
imap <C-p> <Esc>pa

" Nicer single-line visual mode
nnoremap vv _v$h

" Disable arrows
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" Reindent without losing the selection
xnoremap > >gv
xnoremap < <gv

" Delete surrounding function
nmap dsf F(bdt(ds(

" EasyMotion
map gw \\w

" Spellcheck
map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>sb :setlocal spell spelllang=bg_bg<CR>
map <Leader>sn :setlocal nospell<CR>

" Prettify and minify json
map <leader>jt  <Esc>:%!python -m json.tool<CR>:FixWhitespace<CR>
map <leader>jj  <Esc>ggVG:join<CR>

" Mutlichange
let g:multichange_mapping = '<leader>m'

" Sideways
nnoremap <Leader>< :SidewaysLeft<CR>
nnoremap <Leader>> :SidewaysRight<CR>

" Toggle between light and dark background
map <leader>bb :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Jump to next and previous tags
nnoremap ]t :tnext<CR>
nnoremap [t :tprev<CR>

" CtrlP
let g:ctrlp_map = 'gp'
nnoremap g. :CtrlPTag<cr>

" unstack
let g:unstack_mapkey='<Leader>tr'

" vimux
map <Leader>c :VimuxPromptCommand<CR>
map <Leader>C :VimuxRunLastCommand<CR>

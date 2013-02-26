map <F2> :TlistToggle<CR>
map gn :NERDTreeTabsToggle<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :GundoToggle<CR>

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

" Whitespaste
nmap <leader>P <Plug>WhitespasteBefore
nmap <leader>p <Plug>WhitespasteAfter

" Splitjoin
nnoremap =j :SplitjoinJoin<CR>
nnoremap =s :SplitjoinSplit<CR>

" Switch
nnoremap - :Switch<CR>

" Better Esc
imap jk <Esc>l
imap kj <Esc>l

" Moving through splits
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

" Resizing splits
map <C-w>h <C-w>10<
map <C-w>j <C-W>10-
map <C-w>k <C-W>10+
map <C-w>l <C-w>10>

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
" IPython(I've promised myself to try it again...soon)
" vmap <C-e> :python run_these_lines()<CR>
" map <F5> :python run_this_file()<CR>


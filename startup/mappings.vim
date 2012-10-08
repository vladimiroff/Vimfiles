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
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
map <Space> :

" Better Esc
imap jk <Esc>l
imap kj <Esc>l

" Moving through splits:
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

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


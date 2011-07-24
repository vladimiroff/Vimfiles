" Taglist
map <F2> :TlistToggle<CR>
map <F3> :NERDTreeToggle<CR>

" SplitJoin mappings
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

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
map <Space> :
map <C-Space> <Esc>

" Moving through splits:
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Faster scrolling:
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Paste in insert mode
imap <C-p> <Esc>pa

" Nicer single-line visual mode
nnoremap vv _v$h

" Pylint
map <C-q> :Pylint 

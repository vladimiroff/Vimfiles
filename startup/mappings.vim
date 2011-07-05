" Faster script execution
map Q :!clear && python %<CR>
map \php :!clear && php %<CR>

" NERDTRee
map <F3> :NERDTreeToggle<CR>

" Buffers
map <C-h> gt
map <C-l> gT
map qq    <Esc>:tabclose<CR>

" Some little, but handy mappings
command! Q q
command! W w

map <C-s> :w<CR>
map <Space> :
imap <C-Space> <Esc>

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

" SplitJoin mappings
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" Nicer one-line visual mode
nnoremap vv _v$h

" Clipbaord
set clipboard=unnamedplus

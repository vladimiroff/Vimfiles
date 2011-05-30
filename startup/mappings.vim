" Faster script execution
map Q :!clear && python %<CR>
map \php :!clear && php %<CR>

" NERDTRee
map <F3> :NERDTreeToggle<CR>

" Buffers
map <C-h> <Esc>:bp<CR>
map <C-l> <Esc>:bn<CR>
map <C-k> <Esc>:Kwbd<CR>
map <F2> :BufExplorer<CR>

" External file opening
map gf :edit <cfile><CR>

" Some little, but handy mappings
map :W :w
map :Q :q
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


" Tagbar
map <Leader>t :TagbarToggle<CR>

" NERDTree
map gn :NERDTreeToggle<CR>
map gN :NERDTreeFind<CR>

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
nnoremap <Space> :call SpaceMapping(0)<CR>
xnoremap <Space> :<C-u>call SpaceMapping(1)<CR>

" Make Y behave like C and D
map Y y$

" Rescan the buffer from start and fix highlighting
nnoremap <Leader>S <Esc>:syntax sync fromstart<CR>

" Splitjoin
nnoremap =j :SplitjoinJoin<CR>
nnoremap =s :SplitjoinSplit<CR>

" Switch
nnoremap - :Switch<CR>

" Resizing splits
map <C-e>h <C-w>10<
map <C-e>j <C-W>10-
map <C-e>k <C-W>10+
map <C-e>l <C-w>10>

" Paste in insert mode
imap <C-p> <Esc>pa

" Nicer single-line visual mode
nnoremap vv _v$h

" Reindent without losing the selection
xnoremap > >gv
xnoremap < <gv

" Delete surrounding function
nmap dsf F(bdt(ds(

" EasyMotion
map gw \\w
map gW \\b

" Spellcheck
map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>sb :setlocal spell spelllang=bg_bg<CR>
map <Leader>sn :setlocal nospell<CR>

" Prettify and minify json
map <leader>jt  <Esc>:%!python -m json.tool<CR>:FixWhitespace<CR>
map <leader>jj  <Esc>ggVG:join<CR>

" Mutlichange
let g:multichange_mapping = 'sm'
let g:multichange_motion_mapping = "m"

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

" jedi
let g:jedi#completions_command = "<C-Space>"
let g:jedi#documentation_command = "K"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#rename_command = "<leader>r"
let g:jedi#usages_command = "<leader>n"

" TabMan
let g:tabman_toggle = 'gM'
let g:tabman_focus = 'gMM'

" Tagbar
map <Leader>t :Vista!!<CR>

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
map <left>  <C-w>10<
map <up>    <C-w>10-
map <down>  <C-w>10+
map <right> <C-w>10>

" Nicer single-line visual mode
nnoremap vv _v$h

" Reindent without losing the selection
xnoremap > >gv
xnoremap < <gv

" Reselect pasted text
nnoremap gP `[v`]

" Spellcheck
map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>sb :setlocal spell spelllang=bg_bg<CR>
map <Leader>sn :setlocal nospell<CR>

" Prettify and minify json
map <leader>Jt  <Esc>:%!python -m json.tool<CR>:StripWhitespace<CR>

" Mutlichange
let g:multichange_mapping = 'sm'
let g:multichange_motion_mapping = "m"

" Sideways
nnoremap <Leader>< :SidewaysLeft<CR>
nnoremap <Leader>> :SidewaysRight<CR>

" Jump to next and previous tags
nnoremap ]t :tnext<CR>
nnoremap [t :tprev<CR>

" Mapping selecting mappings
nnoremap gp         :Files<cr>
nnoremap g.         :Tags<cr>
nnoremap <leader>p  :GFiles<cr>
nnoremap <leader>be :Buffers<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>rg :Rg <C-R><C-W><cr>
nnoremap <leader>h  :History<cr>
nnoremap <leader>M  :Marks<cr>

" Insert mode completion
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" unstack
let g:unstack_mapkey='<Leader>T'

" TabMan
let g:tabman_toggle = 'gM'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"

" Grepper
nnoremap <leader>/ :Grepper -tool grep<cr>
nnoremap <leader>* :Grepper -tool grep -cword -noprompt<cr>
nnoremap <leader>G :Grepper -tool git<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Repeat last macro
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'

" fugitive
map <leader>g :Git<CR>

if exists('$WAYLAND_DISPLAY')
  if executable('wl-copy')
    xnoremap <leader>y y:call system("wl-copy", @")<cr>
  endif
  if executable('wl-paste')
    nnoremap <leader>p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
  endif
endif

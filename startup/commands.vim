"  Setup the "Run" and "Console" commands for the current filetype
command! -nargs=* RunCommand
      \ command! -buffer -complete=file -nargs=* Run <args>
command! -nargs=* ConsoleCommand
      \ command! -buffer -complete=file -nargs=* Console <args>

" Quit tab, even if it's just one
command! Q call s:Q()
function! s:Q()
  try
    tabclose
  catch /E784/ " Can't close last tab
    qall
  endtry
endfunction

" Delete surrounding function call
" Relies on surround.vim
"
" function_call(cursor_here) => dsf => cursor_here
nnoremap <silent> dsf :call <SID>DeleteSurroundingFunctionCall()<cr>
function! s:DeleteSurroundingFunctionCall()
  if search('\k\+\zs(', 'b', line('.')) <= 0
    return
  endif

  " what's the opening bracket?
  let opener = getline('.')[col('.') - 1]

  " go back one word to get to the beginning of the function call
  normal! b

  " now we're on the function's name, see if we should move back some more
  " e.g. Foo.bar(baz), Bar::Baz.new(qux)
  let prefix = strpart(getline('.'), 0, col('.') - 1)
  while prefix =~ '\(\.\|::\)$'
    if search('\k\+', 'b', line('.')) <= 0
      break
    endif
    let prefix = strpart(getline('.'), 0, col('.') - 1)
  endwhile

  exe 'normal! dt'.opener
  exe 'normal ds'.opener
  silent! call repeat#set('dsf')
endfunction

" Toggle between light and dark style of lucius
"
" I can totally rely on background and don't bother changing its value,
" because lucius is taking care of that during applying the color scheme.
nnoremap <leader>bb :call <SID>ToggleLuciusStyle()<cr>
function! s:ToggleLuciusStyle()
  let switchto = "dark"
  if &background == "dark"
    let switchto = "light"
  endif

  let g:lucius_style = switchto
  colorscheme lucius
endfunction

" Mimics xolox/vim-notes when searching for notes, except with fancy
" fuzzy-find window, searching into where I keep my notes.
command! Note :Files ~/storage/notes/

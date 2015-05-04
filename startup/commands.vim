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

" <space>x -> :X
" For easier typing of custom commands
function! SpaceMapping(visual)
  echo
  let c = nr2char(getchar())
  if a:visual
    normal! gv
  endif
  call feedkeys(':'.toupper(c))
endfunction

" Switch to default colorscheme with light background
command! Dl call s:DefaultThemeAndLightBackground()
function! s:DefaultThemeAndLightBackground()
  colorscheme default
  set background=light
endfunction

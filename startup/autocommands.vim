augroup startup
  autocmd!

  " Call :diffupdate on enter and after save when dealing with diffs. Calling
  " BufEnter because :Gdiff from :Gstatus in fugitive sometimes opens the
  " buffers misaligned to begin with.
  if &diff
    autocmd BufEnter     * diffupdate
    autocmd BufWritePost * diffupdate
  endif

augroup END

" Reimplementation of https://github.com/tonymajestro/smart-scrolloff.nvim
" See https://gist.github.com/AndrewRadev/fe4aaaccf5e0b278b5acdc089e104ab4
if !exists('g:scrolloff_fraction')
  let g:scrolloff_fraction = 0.2
endif

augroup smart_scrolloff
  autocmd!

  autocmd BufRead,BufNewFile,WinResized *
        \ if g:scrolloff_fraction > 0 |
        \   let &scrolloff = float2nr(floor((line('w$') - line('w0')) * g:scrolloff_fraction)) |
        \ endif
augroup END

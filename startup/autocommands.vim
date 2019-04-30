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

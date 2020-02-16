RunCommand call LatexRun(expand('%'))
let b:ale_linters = ['chktex']

function! LatexRun(fname)
  call system('latex '.a:fname)
  let compiled = substitute(a:fname, '\.latex$', '.dvi', '')
  call system('xdg-open '.compiled.' &')
endfunction

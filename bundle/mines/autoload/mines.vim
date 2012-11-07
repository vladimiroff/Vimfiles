function mines#start()
  below 9 new
  setlocal nonumber readonly nomodified nomodifiable ft=mines
  call s:setupHighlighting()

  noremap <silent> <buffer> q       :bdelete<CR>
  noremap <silent> <buffer> <CR>    :call <SID>open(line('.') - 1, col('.') - 1)<CR>
  noremap <silent> <buffer> f       :call <SID>open(line('.') - 1, col('.') - 1)<CR>
  noremap <silent> <buffer> <Space> :call <SID>flag(line('.') - 1, col('.') - 1)<CR>
  noremap <silent> <buffer> a       :call <SID>flag(line('.') - 1, col('.') - 1)<CR>
  noremap <silent> <buffer> <F5>    :call <SID>restart()<CR>
  noremap <silent> <buffer> r       :call <SID>restart()<CR>

  let b:width = 9
  let b:height = 9
  call s:restart()
endfunction

function s:restart()
  let b:nMines = 10
  let b:phase = 0 " 0: not started yet, 1: in progress, 2: finished
  let b:board = []
  for i in range(b:height)
    call add(b:board, [])
    for j in range(b:width)
      call add(b:board[i], {'isOpen': 0, 'flag': 0, 'isMine': 0, 'nNeighbours': 0})
    endfor
  endfor
  let b:remaining = b:width * b:height - b:nMines
  call s:render()
  echohl MoreMsg | echomsg '<Enter> opens a cell, <Space> flags it' | echohl None
endfunction

function s:setupHighlighting()
  hi mines0        ctermfg=darkgray                      guifg=darkgray
  hi mines1        ctermfg=blue                          guifg=blue
  hi mines2        ctermfg=green                         guifg=green
  hi mines3        ctermfg=magenta                       guifg=magenta
  hi mines4        ctermfg=darkblue                      guifg=darkblue
  hi mines5        ctermfg=darkred                       guifg=darkred
  hi mines6        ctermfg=darkcyan                      guifg=darkcyan
  hi mines7        ctermfg=darkgreen                     guifg=darkgreen
  hi mines8        ctermfg=white                         guifg=white
  hi minesClosed   ctermfg=white ctermbg=grey            guifg=white guibg=grey
  hi minesFlag     ctermfg=red   ctermbg=grey cterm=bold guifg=red   guibg=grey gui=bold
  hi minesQuestion ctermfg=red   ctermbg=grey            guifg=red   guibg=grey
  hi minesMine     ctermfg=white ctermbg=red             guifg=white guibg=red
endfunction

function s:init(pi, pj)
  " Place the mines
  " Do this only after the first click
  let candidates = []
  for i in range(b:height)
    for j in range(b:width)
      if i != a:pi || j != a:pj " prevent landing on a mine on the first attempt
        call add(candidates, [i, j])
      endif
    endfor
  endfor
  call random#shuffle(candidates, b:nMines)
  for [i, j] in candidates[:(b:nMines - 1)]
    let b:board[i][j].isMine = 1
    for [i1, j1] in s:vicinity(i, j)
      let b:board[i1][j1].nNeighbours += 1
    endfor
  endfor
  let b:phase = 1
  let b:t0 = localtime()
endfunction

function s:open(pi, pj)
  if b:phase > 1
    return
  endif
  if b:phase == 0
    call s:init(a:pi, a:pj)
  endif
  let cell = b:board[a:pi][a:pj]
  if cell.flag
    return
  endif
  if cell.isOpen
    let nMarkedNeighbours = 0
    for [i, j] in s:vicinity(a:pi, a:pj)
      if b:board[i][j].flag == 1
        let nMarkedNeighbours += 1
      endif
    endfor
    if nMarkedNeighbours >= cell.nNeighbours
      for [i, j] in s:vicinity(a:pi, a:pj)
        let x = b:board[i][j]
        if x.flag != 1 && !x.isOpen
          call s:open(i, j)
        endif
      endfor
    endif
    return
  endif
  if cell.isMine
    let b:phase = 2
    echohl ErrorMsg | echomsg 'Boom!  <F5> to restart' | echohl None
    for row in b:board
      for cell in row
        let cell.isOpen = 1
      endfor
    endfor
  else
    let cell.isOpen = 1
    if cell.nNeighbours == 0
      for [i, j] in s:vicinity(a:pi, a:pj)
        call s:open(i, j)
      endfor
    endif
    let b:remaining -= 1
    if !b:remaining
      for row in b:board
        for cell in row
          if !cell.isOpen
            let cell.flag = 1
          endif
        endfor
      endfor
      let b:phase = 2
      echohl MoreMsg | echomsg 'Congratulations!  Solved in ' . (localtime() - b:t0) . ' seconds.  <F5> to restart' | echohl None
    endif
  endif
  call s:render()
endfunction

function s:flag(i, j)
  if b:phase > 1
    return
  endif
  if b:phase == 0
    call s:init(a:i, a:j)
  endif
  let cell = b:board[a:i][a:j]
  if cell.isOpen
    return
  endif
  let cell.flag = (cell.flag + 1) % 3
  call s:render()
endfunction

function s:vicinity(i, j)
  let r = []
  for i1 in range(a:i - (a:i > 0), a:i + (a:i < b:height - 1))
    for j1 in range(a:j - (a:j > 0), a:j + (a:j < b:width - 1))
      call add(r, [i1, j1])
    endfor
  endfor
  return r
endfunction

function s:render()
  let lines = []
  for row in b:board
    let line = ''
    for c in row
      let line .= c.isOpen ? (c.isMine ? '*' : c.nNeighbours ? c.nNeighbours : '.') : '#!?'[c.flag]
    endfor
    call add(lines, line)
  endfor
  setlocal noreadonly modifiable
  call setline(1, lines)
  setlocal readonly nomodifiable nomodified
endfunction

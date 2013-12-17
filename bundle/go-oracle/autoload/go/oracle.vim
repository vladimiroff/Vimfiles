" Get the path to the Go oracle executable.
function! go#oracle#executable()
  if !exists('s:go_oracle_executable')
    let [ext, sep] = (has('win32') || has('win64') ? ['.exe', ';'] : ['', ':'])
    let executable = globpath(join(split($GOPATH, sep), ','), '/bin/oracle' . ext)
    if executable == ''
      let executable = globpath($GOROOT, '/bin/oracle' . ext)
    endif
    if executable == ''
      echoerr "Executable 'oracle' not found in $GOPATH or $GOROOT"
      return ''
    endif

    let s:go_oracle_executable = executable
  endif

  return s:go_oracle_executable
endfunction

function! go#oracle#run(mode, selected) range abort
  let fname = expand('%:p')
  let sname = get(g:, 'go_oracle_scope_file', fname)

  if go#oracle#executable() == ''
    return
  endif

  if a:selected != -1
    let start = s:byte_offset(line("'<"), col("'<"))
    let end = s:byte_offset(line("'>"), col("'>"))
    let pos = printf("%s:#%d,#%d", fname, start, end)
  else
    let start = s:byte_offset(line('.'), col('.'))
    let pos = printf("%s:#%d", fname, start)
  endif

  let cmd = printf('%s -pos=%s %s %s',
        \  go#oracle#executable(),
        \  shellescape(pos), a:mode, shellescape(sname))

  let results = system(cmd)
  if v:shell_error
    echoerr "Shell error: \n".results
    return
  endif

  let saved_errorformat = &errorformat
  set errorformat=
        \%f:%l:%c:\ %m,
        \%f:%l.%c:\ %m,
        \%f:%l.%c-%*\\d.%*\\d:\ %m,
  cexpr results
  let &errorformat = saved_errorformat
endfunction

function! s:byte_offset(l, c)
  if &encoding != 'utf-8'
    let buf = a:l == 1 ? '' : (join(getline(1, a:l-1), "\n") . "\n")
    let buf .= a:c == 1 ? '' : getline('.')[:a:c-2]
    return len(iconv(buf, &encoding, 'utf-8'))
  endif
  return line2byte(a:l) + (a:c-2)
endfunction

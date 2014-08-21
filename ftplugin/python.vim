setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal foldmethod=indent

compiler python

let g:syntastic_python_checkers = ['pep8']

let g:switch_custom_definitions =
    \ [
    \   [' and ', ' or '],
    \   [' is ', ' is not '],
    \   [' == ', ' != '],
    \   ['assertTrue', 'assertFalse'],
    \   ['assertIs', 'assertIsNot'],
    \   ['assertEqual', 'assertNotEqual'],
    \   ['assertAlmostEqual', 'assertNotAlmostEqual'],
    \   ['assertGreater', 'assertNotGreater'],
    \   ['assertGreaterEqual', 'assertNotGreaterEqual'],
    \   ['assertLess', 'assertNotLess'],
    \   ['assertLessEqual', 'assertNotLessEqual'],
    \   ['assertRegex', 'assertNotRegex'],
    \   ['assertNone', 'assertNotNone'],
    \   ['assertIn', 'assertNotIn'],
    \   ['assertIsInstance', 'assertNotIsInstance'],
    \ ]

nnoremap <leader>bt <esc>Oimport ipdb; ipdb.set_trace() # XXX BREAKPOINT<esc>j

RunCommand     !python    % <args>
ConsoleCommand !python -i % <args>

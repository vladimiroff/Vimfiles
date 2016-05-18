setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal foldmethod=indent
setlocal foldlevelstart=0
setlocal foldlevel=0

" Enable cursorline and cursorcolumn
setlocal cursorline
setlocal cursorcolumn

" jedi
let g:jedi#completions_command = "<C-x><C-o>"
let g:jedi#documentation_command = "K"
let g:jedi#goto_assignments_command = "gd"
let g:jedi#goto_definitions_command = "gD"
let g:jedi#rename_command = "<leader>r"
let g:jedi#usages_command = "<leader>U"

compiler python

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

RunCommand     !python    % <args>
ConsoleCommand !python -i % <args>

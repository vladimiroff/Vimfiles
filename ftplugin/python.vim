setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

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

let b:ale_linters =  ['pyright']
let b:ale_fixers =  ['black']

RunCommand     !python    % <args>
ConsoleCommand !python -i % <args>

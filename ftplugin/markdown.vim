let b:surround_{char2nr('*')} = "**\r**"
let b:surround_{char2nr('_')} = "_\r_"

RunCommand silent call system('quickmd '.shellescape(expand('%')).' 2>&1 > /dev/null &')

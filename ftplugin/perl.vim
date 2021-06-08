setlocal shiftwidth=4
setlocal tabstop=4
setlocal tags+=~/perl5/ptags


" Increment and decrement Test::More plan number
function! s:PlanNumberFeed(keys)
	if search('plan tests => \d', 'e') > 0
		call feedkeys(a:keys, 'nt')
	endif
endfunction

noremap <silent><leader><c-a> :call <SID>PlanNumberFeed("\<C-a>")<cr>
noremap <silent><leader><c-x> :call <SID>PlanNumberFeed("\<C-x>")<cr>

" Describe the expression at the current point.
command! -range=% OracleDescribe call go#oracle#run('describe', <count>)

" Show possible callees of the function call at the current point.
command! -range=% OracleCallees call go#oracle#run('callees', <count>)

" Show the set of callers of the function containing the current point.
command! -range=% OracleCallers call go#oracle#run('callers', <count>)

" Show the callgraph of the current program.
command! -range=% OracleCallgraph call go#oracle#run('callgraph', <count>)

" Describe the 'implements' relation for types in the
" package containing the current point.
command! -range=% OracleImplements call go#oracle#run('implements', <count>)

" Enumerate the set of possible corresponding sends/receives for
" this channel receive/send operation.
command! -range=% OracleChannelPeers call go#oracle#run('peers', <count>)

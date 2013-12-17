This is a very incomplete implementation of Vim support for the [Go
oracle](http://godoc.org/code.google.com/p/go.tools/oracle).
The original file this was based on is
[here](http://code.google.com/p/go/source/browse/cmd/oracle/oracle.vim?repo=tools).

For now, this is the same code, simply organized in a different way. I intend
to experiment with it to get some more useful integration with the editor.

The main interface is a set of buffer-local commands, prefixed with `Oracle`.
By default, they look at the current cursor location for context, but they can
also be given a visual range.

The following commands are currently implemented:

- `OracleDescribe`: Describes the expression at the current point.
- `OracleCallees`: Show possible callees of the function call at the current point.
- `OracleCallers`: Show the set of callers of the function containing the current point.
- `OracleCallgraph`: Show the callgraph of the current program.
- `OracleImplements`: Describe the 'implements' relation for types in the
  package containing the current point.
- `OracleChannelPeers`: Enumerate the set of possible corresponding
  sends/receives for this channel receive/send operation.

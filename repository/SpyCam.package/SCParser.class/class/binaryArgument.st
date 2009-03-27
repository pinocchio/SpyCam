selector
binaryArgument
	^ PEGParser
		named: 'BINARY-ARGUMENT'
		parsing: (self binarySelector & self argumentName)
		semantics: [:result |
			ASTArgumentSelector new
				keywords: (OrderedCollection with: (result at: 1));
				arguments: (OrderedCollection with: (result at: 2))
		]
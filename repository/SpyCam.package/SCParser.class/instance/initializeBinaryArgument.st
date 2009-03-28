selector
initializeBinaryArgument
	^ PEGParser
		named: 'BINARY-ARGUMENT'
		parsing: (self binarySelector & self argumentName)
		semantics: [:result |
			ASTBinarySelector new
				selector: (result at: 1);
				argument: (result at: 2).
		]
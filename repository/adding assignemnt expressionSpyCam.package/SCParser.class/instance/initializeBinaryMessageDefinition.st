selector
initializeBinaryMessageDefinition
	^ PEGParser
		named: 'BINARY-ARGUMENT'
		parsing: (self binarySelector & self parameterName)
		semantics: [:result |
			ASTBinaryMessageDefinition new
				selector: (result at: 1);
				parameter: (result at: 2).
		]
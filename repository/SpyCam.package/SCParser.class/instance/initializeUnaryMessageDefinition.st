selector
initializeUnaryMessageDefinition
	^ PEGParser
		named: 'UNARY-MESSAGE-DEFINITION'
		parsing: self unarySelector
		semantics: [ :selector |
			ASTUnaryMessageDefinition new
				selector: (self createSymbol: selector selector).
		]
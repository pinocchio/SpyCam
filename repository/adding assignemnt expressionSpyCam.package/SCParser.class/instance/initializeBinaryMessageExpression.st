expression
initializeBinaryMessageExpression
	^ PEGParser
		named: 'BINARY-MESSAGE-EXPRESSION'
		parsing: (self binarySelector & (self unaryObjectDescription))
		semantics: [ :parts |
			ASTBinaryExpression new
				selector: (parts at: 1);
				argument: (parts at: 2)
		]
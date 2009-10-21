expression
initializeUnaryMessageExpression
	^ PEGParser
		named: 'UNARY-MESSAGE-EXPRESSION'
		parsing: self unarySelector
		semantics: [ :selector |
			ASTUnaryExpression new
				selector: (self createSymbol: selector selector)
		]
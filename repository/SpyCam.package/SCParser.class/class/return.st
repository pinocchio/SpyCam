basic-block
return
	^ PEGParser
		named: 'RETURN'
		parsing: ('^' asPEG omit) & self finalExpression
		semantics: [ :expression |
			ASTReturnExpression new expression: expression
		]
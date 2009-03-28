expression
initializeUnaryExpression
	^ PEGParser 
		named: 'UNARY-EXPRESSION'
		parsing: (self primary & (self unarySelector plus))
		semantics: [ :parts | |result|
			result := parts at: 1.
			(parts at: 2) do: [ :selector |
				result := ASTUnaryExpression new
							receiver: result;
							selector: selector
			].
			result
		]
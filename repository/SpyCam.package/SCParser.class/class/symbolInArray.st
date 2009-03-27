literal
symbolInArray
	^ PEGParser
		named: 'SYMBOL-IN-ARRAY'
		parsing: (self symbol)
		semantics: [:symbol |
			ASTSymbol new symbol: symbol
		]
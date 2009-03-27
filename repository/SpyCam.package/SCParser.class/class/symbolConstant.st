literal
symbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: (('#' asPEG omit: true) && self symbol)
		semantics: [ :result |
			ASTSymbol new literal: result
		]
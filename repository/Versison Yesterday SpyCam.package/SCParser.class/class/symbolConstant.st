literal
symbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: (('#' asPEG omit: true) strongAnd: self symbol)
		semantics: [ :result |
			ASTSymbol new literal: result
		]
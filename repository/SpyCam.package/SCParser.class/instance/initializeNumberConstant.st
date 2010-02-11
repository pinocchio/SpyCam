literal
initializeNumberConstant
	" XXX For now. "
	^ PEGParser
		named: 'NUMBER'
		parsing: self decimalDigit strongPlus
		semantics: [ :result |
			ASTNumber new number: (result inject: '' into: [:c :e | c, e] ); base: '10'
		]
literal
numberConstant
	" XXX For now. "
	^ PEGParser
		named: 'NUMBER'
		parsing: self decimalDigit plus
		semantics: [ :result |
			ASTNumber new number: (result inject: '' into: [:c :e | c, e] ); base: '10'
		]
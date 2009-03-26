as yet unclassified
characterConstant
	^ PEGParser
		named: 'CHARACTER-CONSTANT'
		parsing: (('$' asPEG omit: true) strongAnd: (self character))
		semantics: [ :char |
			ASTCharacter new literal: char first
		]
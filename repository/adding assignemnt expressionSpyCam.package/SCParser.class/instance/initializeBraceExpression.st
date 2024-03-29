basic-block
initializeBraceExpression
	^ PEGParser
		named: 'BRACE-EXPRESSION'
		
		parsing: ('{' asPEG omit: true) & self subExpression times <& self expression <& ('}' asPEG omit: true)
		
		semantics: [ :result |
			ASTBraceExpression new
				expressions: ((result at: 1) add: (result at: 2); yourself)
		]
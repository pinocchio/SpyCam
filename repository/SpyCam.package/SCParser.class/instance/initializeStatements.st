basic-block
initializeStatements
	^ PEGParser
		named: 'STATEMENTS'
		
		parsing: self subExpression times & (self return | self finalExpression) optional
		
		semantics: [ :result |
			(result at: 2) ifMatched: [ :exp | (result at: 1) add: exp  ].
			result at: 1
		]
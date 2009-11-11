expression
initializeKeywordMessageExpression
	^ PEGParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & (self binaryObjectDescription)) plus
		semantics: [ :parts |
			ASTMessageExpression new
				keywords: (parts collect: [:pair | pair first]);
				selector: (ASTKeywordSelector new 
							keywords: (parts collect: [:pair | pair first]);
							selector: (self createSymbol: 
											((parts collect: [:pair | pair first]) joinUsing: ':'), ':'));
				arguments: (parts collect: [:pair | pair at: 2])
		]
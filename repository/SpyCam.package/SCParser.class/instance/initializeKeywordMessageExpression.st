expression
initializeKeywordMessageExpression
	^ PEGParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & (self binaryObjectDescription)) plus
		semantics: [ :parts |
			ASTMessageExpression new
				keywords: (parts collect: #first);
				selector: (ASTKeywordSelector new 
							keywords: (parts collect: #first);
							selector: (self createSymbol: ((parts collect: #first) joinUsing: ':'), ':'));
				arguments: (parts collect: #second)
		]
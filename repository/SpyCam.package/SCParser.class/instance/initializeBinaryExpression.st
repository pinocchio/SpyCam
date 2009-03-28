expression
initializeBinaryExpression
	
	self preStoreBinaryObjectDescription.
	
	parsers at: #binaryExpression ifAbsentPut: (
	
	PEGParser
		named: 'BINARY-EXPRESSION'
		parsing: (self unaryObjectDescription & self binarySelector <& self binaryObjectDescription)
		semantics: [:parts |
			ASTBinaryExpression new
				receiver: (parts at: 1);
				selector: (parts at: 2);
				argument: (parts at: 3)
		]
	
	).
	
	self injectBinaryObjectDescription.
	
	^ self binaryExpression
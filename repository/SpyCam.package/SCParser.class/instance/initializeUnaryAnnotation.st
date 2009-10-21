annotations
initializeUnaryAnnotation
	^ PEGParser
		named: 'UNARY-ANNOTATION'
		parsing: self unarySelector
		semantics: [ :result |
			ASTUnaryAnnotation new
				selector: (self createSymbol: result selector)
		]
annotations
initializeUnaryAnnotation
	^ PEGParser
		named: 'UNARY-ANNOTATION'
		parsing: self unarySelector
		semantics: [ :result |
			ASTUnaryAnnotation new
				selector: result selector
		]
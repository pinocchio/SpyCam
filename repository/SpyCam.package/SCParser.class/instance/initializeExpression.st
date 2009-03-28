expression
initializeExpression
	| variables expression |
	" Prestoring a primary parser to handle circular references. "
	self preStorePrimary.
	
	parsers at: #expression put: (
		
	PEGParser
		named: 'EXPRESSION'
		
		parsing: self assignmentExpressions
					& (self cascadedMessageExpression
						| self messageExpression
						<= self primary)
		
		semantics: [ :result |
			variables := result at: 1.
			expression := result at: 2.
			variables reverse do: [ :variable |
				expression := ASTAssignmentExpression new
								expression: expression;
								variable: variable
			].
			expression
		]
	
	).
	
	" After having built the expression parser, we inject the primary parser into the stub. "
	self injectPrimary.
	
	^ parsers at: #expression
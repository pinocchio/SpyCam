basic-block
expression
	| variables expression |
	^ PEGParser
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
basic-block
primary
	| variables expression |
	^ PEGParser
		named: 'PRIMARY'
		
		parsing: self primaryVariable | self literal <= self block <= self braceExpression <= self scopedExpression
		
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
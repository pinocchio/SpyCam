*SpyCam-AST
hasReturnExpression
	^ self anySatisfy: [ :el | 
		el isReturnExpression or: [ el hasReturnExpression ]
	].
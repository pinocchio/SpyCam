visitor
visitBinaryExpression: anExpression 
	anExpression selector: (self createSymbol: anExpression selector).
	^ super visitBinaryExpression: anExpression
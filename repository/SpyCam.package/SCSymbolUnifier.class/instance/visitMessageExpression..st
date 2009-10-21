visitor
visitMessageExpression: anExpression 
	anExpression selector: (self createSymbol: anExpression selectorName).
	^ super visitMessageExpression: anExpression
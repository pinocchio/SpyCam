visitor
visitUnaryExpression: anExpression 
	anExpression selector selector: (self createSymbol: anExpression selector selector).
	^ super visitUnaryExpression: anExpression
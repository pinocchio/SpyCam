visitor
visitBinaryMessageDefinition: anExpression 
	anExpression selector: (self createSymbol: anExpression selectorName).
	^ super visitBinaryMessageDefinition: anExpression
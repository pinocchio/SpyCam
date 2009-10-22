visitor
visitBlock: aBlock 
	| result |
	self pushScope.
	scope declareAll: aBlock parameters. 
	scope declareAll: aBlock temporaries.
	result := PinocchioBlock new
		params: (self acceptOnCollection: aBlock parameters) asPArray;
		locals: (self acceptOnCollection: aBlock temporaries) asPArray;
		body: (self acceptOnCollection: aBlock statements) asPArray.
	self popScope.
	^result
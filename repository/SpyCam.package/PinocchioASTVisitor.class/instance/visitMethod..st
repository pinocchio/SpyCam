visitor
visitMethod: aMethod 
	| block params locals body |
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	block := PinocchioBlock new
		body: (self acceptOnCollection: aMethod statements) asPArray;
		locals: (self acceptOnCollection: aMethod temporaries) asPArray;
		params: (self acceptOnCollection: aMethod message parameters) asPArray.
	self popScope.
	aMethod hasReturnExpression ifTrue: [ block := self wrapReturningBlock: block ].
	^ PinocchioClosure new code: block
visitor
visitMethod: aMethod 
	| block params locals body method hasReturn |
	currentMethod := aMethod.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	
	hasReturn := aMethod hasReturnExpression.
	
	aMethod hasReturnExpression ifFalse: [
		body :=  self createNonReturningMethodBodyFor: aMethod.	
	] ifTrue: [
		body :=  self createReturningMethodBodyFor: aMethod.
	].
	method := PMethod withAll: body.
	method selector: (self visit: aMethod message);
		params: (self acceptOnCollection: aMethod message parameters) asPArray;
		locals: (self acceptOnCollection: aMethod temporaries) asPArray;
		annotations:  (self acceptOnCollection: aMethod annotations) asPArray;
		hasReturn: hasReturn.
	
	self popScope.
	^ method.
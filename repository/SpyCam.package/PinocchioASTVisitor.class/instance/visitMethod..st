visitor
visitMethod: aMethod 
	| block params locals body method |
	currentMethod := aMethod.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	
	method :=  PinocchioMethod new
		hasReturn: aMethod hasReturnExpression.
	
	aMethod hasReturnExpression ifFalse: [
		body :=  self createNonReturningMethodBodyFor: aMethod.	
	] ifTrue: [
		body :=  self createReturningMethodBodyFor: aMethod.
	].

	method selector: (self visit: aMethod message);
		params: (self acceptOnCollection: aMethod message parameters) asPArray;
		locals: (self acceptOnCollection: aMethod temporaries) asPArray;
		body: body; 
		annotations:  (self acceptOnCollection: aMethod annotations) asPArray.
	
	self popScope.
	^ method.
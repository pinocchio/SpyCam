visitor
visitMethod: aMethod 
	| block params locals |
	currentMethod := aMethod.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	block := PinocchioBlock new 
				locals: (self acceptOnCollection: aMethod temporaries) asPArray;
				params: (self acceptOnCollection: aMethod message parameters) asPArray;
				body: (self acceptOnCollection: aMethod statements) asPArray.
		
	"finally always return self"
	block body isEmpty 
		ifTrue: [ block body add: PinocchioSelf new.]
		ifFalse: [ block := self handleReturn: block].
	
	self popScope.
	
	^ PinocchioMethod new 
		body: 	 block body; 
		locals:   block locals;
		params: block params;
		hasReturn: aMethod hasReturnExpression.
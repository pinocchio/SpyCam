visitor
visitMethod: aMethod 
	| block params locals body |
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	
	block := PinocchioBlock new
		body:    (self acceptOnCollection: aMethod statements) asPArray;
		locals:   (self acceptOnCollection: aMethod temporaries) asPArray;
		params: (self acceptOnCollection: aMethod message parameters) asPArray.
		
	"finally always return self"
	block body last isReturnExpression ifFalse: [
		block body add: (PinocchioReturn new argument: PinocchioSelf new).
	].
	
	self popScope.
	aMethod hasReturnExpression ifTrue: [ block := self wrapReturningBlock: block ].
	
	^ PinocchioMethod new 
		body: block; 
		hasReturn: aMethod hasReturnExpression.
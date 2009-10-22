visitor
visitMethod: aMethod 
	| block params locals body |
	self pushScope.
	aMethod message params isNil 
		ifTrue: [ params := #() ]
		ifFalse: [ scope declareAll: aMethod message params.
			params := self acceptOnCollection: aMethod message params ].
	aMethod temporaries isNil 
		ifTrue: [ locals := #() ]
		ifFalse: [ scope declareAll: aMethod temporaries.
			locals := self acceptOnCollection: aMethod temporaries ].
		
	block := PinocchioBlock new
		body: (self acceptOnCollection: aMethod statements) asPArray;
		locals: locals asPArray;
		params: params asPArray.
	self popScope.
	aMethod hasReturnExpression ifTrue: [ block := self wrapReturningBlock: block ].
	^ PinocchioClosure new code: block
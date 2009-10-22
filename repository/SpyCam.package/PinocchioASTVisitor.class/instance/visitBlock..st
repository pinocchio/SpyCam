visitor
visitBlock: aBlock 
	| parameters locals values |
	self pushScope.
	aBlock parameters isNil 
		ifTrue: 
			[ parameters := #() ]
		ifFalse: 
			[ scope declareAll: aBlock parameters.
			parameters := self acceptOnCollection: aBlock parameters ].
	aBlock temporaries isNil 
		ifTrue: [ locals := #() ]
		ifFalse: 
			[ scope declareAll: aBlock temporaries.
			locals := self acceptOnCollection: aBlock temporaries ].
	self popScope.
	^ PinocchioBlock new
		params: parameters asPArray;
		locals: locals asPArray;
		body: (self acceptOnCollection: aBlock statements) asPArray
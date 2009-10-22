visitor
visitBlock: aBlock 
	| parameters locals values parentScope |
	parentScope := scope.
	scope := PinocchioSubScope new: parentScope.
	aBlock parameters isNil 
		ifTrue: [ parameters := #() ]
		ifFalse: [ scope declareAll: aBlock parameters. 
			parameters := self acceptOnCollection: aBlock parameters ].
	aBlock temporaries isNil 
		ifTrue: [ locals := #() ]
		ifFalse: [ scope declareAll: aBlock temporaries.
			locals := self acceptOnCollection: aBlock temporaries ].
	aBlock statements isNil 
		ifTrue: [ values := #() ]
		ifFalse: [ values := self acceptOnCollection: aBlock statements ].
	scope := parentScope.
	^ PinocchioBlock new
		params: (parameters asPArray);
		locals: (locals asPArray);
		body: (values asPArray)
visitor
visitBlock: aBlock 
	| parameters locals values |
	aBlock parameters isNil 
		ifTrue: [ parameters := #() ]
		ifFalse: [ parameters := self acceptOnCollection: aBlock parameters ].
	aBlock temporaries isNil 
		ifTrue: [ locals := #() ]
		ifFalse: [ locals := self acceptOnCollection: aBlock temporaries ].
	aBlock statements isNil 
		ifTrue: [ values := #() ]
		ifFalse: [ values := self acceptOnCollection: aBlock statements ].
	^ PinocchioBlock new
		params: (parameters asPArray);
		locals: (locals asPArray);
		body: (values asPArray)
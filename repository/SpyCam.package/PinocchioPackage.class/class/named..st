instance creation
named: name
	self assert: (name isKindOf: PinocchioSymbol).
	^ self new packageName: name.
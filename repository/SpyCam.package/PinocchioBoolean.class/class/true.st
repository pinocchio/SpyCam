accessing
true
	trueInstance ifNil: [ trueInstance := PinocchioBoolean new bool: true].
	^ trueInstance.
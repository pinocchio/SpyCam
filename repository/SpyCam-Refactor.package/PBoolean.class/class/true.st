accessing
true
	trueInstance ifNil: [ trueInstance := PBoolean new bool: true].
	^ trueInstance.
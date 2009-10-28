accessing
false
	falseInstance ifNil: [ falseInstance := PinocchioBoolean new bool: false].
	^ falseInstance.
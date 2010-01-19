accessing
false
	falseInstance ifNil: [ falseInstance := PBoolean new bool: false].
	^ falseInstance.
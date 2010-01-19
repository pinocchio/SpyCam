comparing
= otherClass
	(otherClass isKindOf: self class) ifFalse: [ ^ false ].
	^ self name = otherClass name
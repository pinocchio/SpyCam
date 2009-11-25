comparing
= other
	(other isKindOf: self class) ifTrue: [ ^ self char = other char ].
	^ false
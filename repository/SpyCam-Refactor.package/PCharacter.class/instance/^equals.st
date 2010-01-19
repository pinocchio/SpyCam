comparing
= other
	^ (other isKindOf: self class) and: [ self char = other char ].
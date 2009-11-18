declarations
ensureClassReferenceForName: aString
	| internalClass |
	self halt.
	internalClass := self class lookup: aString.
	^ PinocchioClassReference named: aString
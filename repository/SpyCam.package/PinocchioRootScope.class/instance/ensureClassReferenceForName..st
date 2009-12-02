declarations
ensureClassReferenceForName: aString
	| internalClass |
	internalClass := self class lookup: aString.
	^ PinocchioClassReference named: aString
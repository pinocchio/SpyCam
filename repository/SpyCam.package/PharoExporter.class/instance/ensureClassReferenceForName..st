convenience
ensureClassReferenceForName: aString 
	| package cls aClassReference |
	cls := Smalltalk at: aString asSymbol.
	package := self ensurePackageFor: cls.
	package at: aString asPSymbol ifPresent: [ :el| ^ el].
	
	aClassReference := PinocchioClassReference named: aString asPSymbol
													in: package.
	Transcript show: ('ensureClassReferenceForName: ', aString asPSymbol printString).
	package storeClassReference: aClassReference.
	self todo add: cls.
	^ aClassReference
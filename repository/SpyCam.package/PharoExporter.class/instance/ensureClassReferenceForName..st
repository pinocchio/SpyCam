convenience
ensureClassReferenceForName: aString 
	| package cls aClassReference aClassName aClassNameSymbol |
	"TODO solve this in a more elegent way"
	cls := Smalltalk at: aString asSymbol.
	aClassName := cls pinocchioName.
	package := self ensurePackageFor: cls.
	aClassNameSymbol := aClassName asPSymbol.
	package at: aClassNameSymbol ifPresent: [ :el| ^ el].
	
	aClassReference := PinocchioClassReference named: aClassNameSymbol
													in: package.
	Transcript show: ('ensureClassReferenceForName: ', aClassNameSymbol printString).
	package storeClassReference: aClassReference.
	self todo add: cls.
	^ aClassReference
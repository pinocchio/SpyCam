as yet unclassified
addDanglingClassReference: aClassReference
	| cls |
	cls := (Smalltalk at: aClassReference referenceName asSymbol).
	(self todo includes: cls) ifFalse: [
		self todo add: cls.
	]
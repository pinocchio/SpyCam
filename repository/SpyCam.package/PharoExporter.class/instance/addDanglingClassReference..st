as yet unclassified
addDanglingClassReference: aClassReference
	self transformClass: (Smalltalk at: aClassReference referenceName asSymbol)
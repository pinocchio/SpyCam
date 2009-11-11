as yet unclassified
addDanglingClassReference: aClassReference
	self todo add: (Smalltalk at: aClassReference referenceName asSymbol).
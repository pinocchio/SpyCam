as yet unclassified
addDanglingClassReference: aClassReference
	| cls package |
	cls := Smalltalk at: aClassReference referenceName asSymbol.
	package := self ensurePackageFor: cls.
	package storeClassReference: aClassReference.
	done at: cls ifAbsent: [
		self todo add: cls
	]
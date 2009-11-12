as yet unclassified
addDanglingClassReference: aClassReference
	| cls package |
	cls := Smalltalk at: aClassReference referenceName asSymbol.
	package := self ensurePackageFor: cls.
	aClassReference referenceName: (PinocchioSymbol named: cls pinocchioName).
	package at: aClassReference referenceName ifAbsent:[
	package storeClassReference: aClassReference.
	done at: cls ifAbsent: [
		Transcript show: '###', cls name ; cr.
		self todo add: cls
	]]
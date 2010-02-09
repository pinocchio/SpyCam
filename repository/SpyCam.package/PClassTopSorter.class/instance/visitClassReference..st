visiting
visitClassReference: aClassReference
	aClassReference pclass accept: self.
	classReferences addLast: aClassReference.
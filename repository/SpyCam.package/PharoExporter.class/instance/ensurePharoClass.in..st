exporting
ensurePharoClass: pharoClass in: aPackage
	| reference |
	reference := aPackage ensureClassReference: pharoClass pinocchioName.
	reference cls ifNil: [
		reference ensure: pharoClass wrapped.
	].
	^ reference cls.
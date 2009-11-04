exporting
ensurePharoClass: pharoClass
	| reference |
	reference := self ensureClassReference: pharoClass name.
	^ reference ensure: pharoClass.
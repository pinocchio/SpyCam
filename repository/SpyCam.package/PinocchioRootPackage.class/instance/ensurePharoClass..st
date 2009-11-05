exporting
ensurePharoClass: pharoClass
	| reference |
	reference := self ensureClassReference: pharoClass pinocchioName.
	^ reference ensure: pharoClass.
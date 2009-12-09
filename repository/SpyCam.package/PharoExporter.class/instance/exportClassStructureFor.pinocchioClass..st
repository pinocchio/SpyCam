exporting
exportClassStructureFor: cls pinocchioClass: aPinocchioClass
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: cls name.
	cls superclass 
		ifNil: [ aPinocchioClass superclass: PinocchioNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: cls superclass).].
	aPinocchioClass layout: (self layoutFor: cls).
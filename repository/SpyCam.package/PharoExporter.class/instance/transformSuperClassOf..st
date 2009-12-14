exporting
transformSuperClassOf: aPinocchioClass.
	aPinocchioClass cls superclass 
		ifNil: [aPinocchioClass superclass: PinocchioNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: aPinocchioClass cls superclass).].
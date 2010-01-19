exporting
transformSuperClassOf: aPinocchioClass.
	aPinocchioClass cls superclass 
		ifNil: [aPinocchioClass superclass: PNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: aPinocchioClass cls superclass).].
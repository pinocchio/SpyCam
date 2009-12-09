exporting
transformSuperClassOf: cls pinocchioClass: aPinocchioClass.
	cls superclass 
		ifNil: [ aPinocchioClass superclass: PinocchioNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: cls superclass).].
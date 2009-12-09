exporting
transformClass: aClass
	|aPinocchioClass cls |
	cls := aClass asPinocchioInternalClass.
	self done at: cls ifPresent: [ :present| ^ present ].
	
	Transcript show: cls name; cr.
	aPinocchioClass := cls asPClass. 
	self done at: cls put: aPinocchioClass.

	aPinocchioClass package: (self ensurePackageFor: cls).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: cls name.
	cls superclass 
		ifNil: [ aPinocchioClass superclass: PinocchioNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: cls superclass).].
	aPinocchioClass layout: (self layoutFor: cls).
	
	pinocchioVisitor pinocchioClass: aPinocchioClass.
	aPinocchioClass methods: (self transformMethodsFor: cls).
	pinocchioVisitor popScope.
	
	classASTs at: cls name put: aPinocchioClass.
	
	^ aPinocchioClass.
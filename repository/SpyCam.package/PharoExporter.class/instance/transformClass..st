exporting
transformClass: cls
	|aPinocchioClass |
	Transcript show: cls name; cr.
	self done at: cls ifPresent: [ :present| ^ present ].
	
	aPinocchioClass := PinocchioClass new name: cls pinocchioName.
	self done at: cls put: aPinocchioClass.

	aPinocchioClass package: (self ensurePackageFor: cls).
	self pushClassReference: (self ensureClassReferenceFor: aPinocchioClass).
	cls superclass ifNotNil: [ 
		aPinocchioClass superclass: 
			(self transformClass: cls superclass).
	].
	aPinocchioClass layout: (self layoutFor: cls).
	
	pinocchioVisitor pinocchioClass: aPinocchioClass.
	aPinocchioClass methods: (self transformMethodsFor: cls).
	pinocchioVisitor popScope.

	^ aPinocchioClass.
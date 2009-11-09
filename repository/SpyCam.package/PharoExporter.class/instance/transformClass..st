exporting
transformClass: cls
	|aPinocchioClass|
	Transcript show: cls name; cr.
	self done at: cls ifPresent: [ :present| ^ present ].
	
	aPinocchioClass := PinocchioClass new name: cls pinocchioName.
	self done at: cls put: aPinocchioClass.

	aPinocchioClass package: (self ensurePackageFor: cls).
	self ensureClassReferenceFor: aPinocchioClass.
	cls superclass ifNotNil: [ 
		aPinocchioClass superclass: (self transformClass: cls superclass).
	].
	
	aPinocchioClass methods: (self transformMethodsFor: cls).
	
	^ aPinocchioClass.
exporting
transformClass: cls
	| aPinocchioClass |
	aPinocchioClass := cls asPClass.
	self done at: aPinocchioClass ifPresent: [ :present | ^ present ].
	
	Transcript show: aPinocchioClass name; cr.
	self done at: aPinocchioClass put: aPinocchioClass.

	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass cls).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass name asSymbol.
	self transformSuperClassOf: aPinocchioClass cls pinocchioClass: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass cls).
	
	pinocchioVisitor pinocchioClass: aPinocchioClass.
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass cls).
	pinocchioVisitor popScope.
	
	classASTs at: aPinocchioClass name asSymbol put: aPinocchioClass.
	
	^ aPinocchioClass.
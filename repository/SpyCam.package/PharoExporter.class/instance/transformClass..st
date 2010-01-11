exporting
transformClass: cls
	| aPinocchioClass |
	cls = ProtoObject ifTrue: [ ^ nil ].
	aPinocchioClass := cls asPClass.
	Transcript show: aPinocchioClass.
	self done at: aPinocchioClass ifPresent: [ :present | ^ present ].
	
	self haltIf: (pinocchioVisitor rootScope isKindOf: PinocchioRootScope) not.
	
	Transcript show: aPinocchioClass name; cr.
	self done at: aPinocchioClass put: aPinocchioClass.
	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass cls).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass name asSymbol.
	self transformSuperClassOf: aPinocchioClass.
	self transformClassSideOf: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass).
	
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass).
	
	classASTs at: aPinocchioClass name asSymbol put: aPinocchioClass.
	
	^ aPinocchioClass.
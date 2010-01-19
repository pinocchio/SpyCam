exporting
transformClass: sclass
	| aPinocchioClass |
	sclass = ProtoObject ifTrue: [ ^ nil ].
	aPinocchioClass := sclass asPClass.
	self done at: aPinocchioClass ifPresent: [ :present | ^ present ].
	
	Transcript show: aPinocchioClass.
	
	self haltIf: (pinocchioVisitor rootScope isKindOf: PRootScope) not.
	
	Transcript show: aPinocchioClass name; cr.
	
	self done at: aPinocchioClass put: aPinocchioClass.
	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass sclass).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass name asSymbol.
	self transformSuperClassOf: aPinocchioClass.
	self transformClassSideOf: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass).
	
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass).
	
	classASTs at: aPinocchioClass name asSymbol put: aPinocchioClass.
	
	^ aPinocchioClass.
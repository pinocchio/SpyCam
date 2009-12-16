exporting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass cls class asPClass.
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).

	pinocchioVisitor pinocchioClass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pinocchioVisitor popScope.
	
	aPinocchioClass pinocchioClass: aPinocchioMetaClass.
	^ aPinocchioMetaClass.
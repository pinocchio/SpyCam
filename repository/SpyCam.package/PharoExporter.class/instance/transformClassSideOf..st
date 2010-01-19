exporting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass cls class asPClass. 
	
	aPinocchioClass superclass 
		ifNil: [aPinocchioMetaClass superclass: PNil nil]
		ifNotNil: [aPinocchioMetaClass superclass: aPinocchioClass superclass pinocchioClass.].
		
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).

	pinocchioVisitor pinocchioClass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pinocchioVisitor popScope.
	
	aPinocchioClass pinocchioClass: aPinocchioMetaClass.
	^ aPinocchioMetaClass.
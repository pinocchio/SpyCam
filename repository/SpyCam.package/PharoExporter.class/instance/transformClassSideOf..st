exporting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass cls class asPClass. 
	
	aPinocchioClass superclass = PNil nil
		ifTrue: [aPinocchioMetaClass superclass: PNil nil]
		ifFalse: [aPinocchioMetaClass superclass: aPinocchioClass superclass pinocchioClass.].
	self haltIf: aPinocchioClass superclass isNil.
		
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).

	pinocchioVisitor pinocchioClass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pinocchioVisitor popScope.
	
	aPinocchioClass pinocchioClass: aPinocchioMetaClass.
	^ aPinocchioMetaClass.
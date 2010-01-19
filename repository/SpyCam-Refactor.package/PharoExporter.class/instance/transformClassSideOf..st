exporting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass pmetaclass. 
	
	aPinocchioClass superclass = PNil nil
		ifTrue: [aPinocchioMetaClass superclass: PNil nil]
		ifFalse: [aPinocchioMetaClass superclass: aPinocchioClass superclass pclass.].
	self haltIf: aPinocchioClass superclass isNil.
		
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).

	pinocchioVisitor pclass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pinocchioVisitor popScope.
	
	aPinocchioClass pclass: aPinocchioMetaClass.
	^ aPinocchioMetaClass.
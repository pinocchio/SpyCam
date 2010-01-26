visitor
visitClass: aPinocchioClass 
	| oldClass |
	(aPinocchioClass superclass isKindOf: PNil)
		ifFalse: [ self visit: aPinocchioClass superclass package ].
	self visit: aPinocchioClass superclass.
	
	oldClass := self currentClass.
	self currentClass: aPinocchioClass.
	self currentClass isInternal ifTrue: [ self halt. ].
	
	self createClass: aPinocchioClass.
	self createMetaclass: aPinocchioClass.
	self createClassMethods: aPinocchioClass.
	
	self visitCollection: aPinocchioClass methods.
	self visit: aPinocchioClass package.
	
	self currentClass: oldClass.
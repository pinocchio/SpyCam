visitor
visitClass: aPinocchioClass 
	| oldClass |
	(aPinocchioClass superclass isKindOf: PinocchioNil)
		ifFalse: [ self visit: aPinocchioClass superclass package ].
	self visit: aPinocchioClass superclass.
	
	oldClass := self currentClass.
	self currentClass: aPinocchioClass.
	self currentClass isInternal ifFalse: [
		self createClass: aPinocchioClass.
	].
	
	self visitCollection: aPinocchioClass methods.
	self visit: aPinocchioClass package.
	
	self currentClass: oldClass.
visitor
visitClass: aPinocchioClass 
	self visit: aPinocchioClass superclass.
	
	self currentClass: aPinocchioClass.
	self visit: aPinocchioClass name.
	self visit: aPinocchioClass layout.
	self createClass: aPinocchioClass.
	
	self visitCollection: aPinocchioClass methods.
	
	self visit: aPinocchioClass package.
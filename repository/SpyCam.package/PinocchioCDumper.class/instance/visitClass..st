visitor
visitClass: aPinocchioClass 
	self visit: aPinocchioClass superclass.
	
	self currentClass: aPinocchioClass.
	self visitCollection: aPinocchioClass methods.
	
	self visit: aPinocchioClass name.
	self visit: aPinocchioClass layout.
	self visit: aPinocchioClass package.
	
	self createClass: aPinocchioClass.
	self installClassMethods: aPinocchioClass.
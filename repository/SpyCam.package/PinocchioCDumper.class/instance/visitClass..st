visitor
visitClass: aPinocchioClass 
	self visitCollection: aPinocchioClass methods.
	self visit: aPinocchioClass package.
	self visit: aPinocchioClass superclass.
	self visit: aPinocchioClass name.
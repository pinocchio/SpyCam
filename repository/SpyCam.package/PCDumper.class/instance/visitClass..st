visitor
visitClass: aPinocchioClass 
	self currentClass should be isNil.
	self currentClass: aPinocchioClass.
	
	self visitCollection: aPinocchioClass methods.
	
	self currentClass: nil.
	self createClassMethods: aPinocchioClass.
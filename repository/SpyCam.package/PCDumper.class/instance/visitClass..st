visitor
visitClass: aPinocchioClass 
	self currentClass should be isNil.
	
	Transcript show: aPinocchioClass name; cr.
	
	self currentClass: aPinocchioClass.
	self visitCollection: aPinocchioClass methods.
	
	self currentClass: nil.
	
	self createClassMethods: aPinocchioClass.
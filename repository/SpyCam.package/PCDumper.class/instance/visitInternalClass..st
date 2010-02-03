visitor
visitInternalClass: aPinocchioInternalClass 
	self currentClass should be isNil.
	self currentClass: aPinocchioInternalClass.
	
	self visitCollection: aPinocchioInternalClass methods.
	
	self currentClass: nil.
visitor
visitInternalClass: aPinocchioInternalClass 
	| oldClass |
	oldClass := self currentClass.
	self currentClass: aPinocchioInternalClass.
	
	self visitCollection: aPinocchioInternalClass methods.
	self visit: aPinocchioInternalClass package.
	
	self currentClass: oldClass.
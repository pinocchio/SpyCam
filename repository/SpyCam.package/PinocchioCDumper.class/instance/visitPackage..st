visitor
visitPackage: aPinocchioPackage 
	self visit: aPinocchioPackage parent.
	self visitCollection: aPinocchioPackage members.
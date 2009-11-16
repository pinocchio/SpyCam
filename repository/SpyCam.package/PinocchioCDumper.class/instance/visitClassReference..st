visitor
visitClassReference: aPinocchioClassReference 
	self visit: aPinocchioClassReference package.
	self visit: aPinocchioClassReference pinocchioClass.
	self visit: aPinocchioClassReference referenceName.
visitor
visitClassReference: aPinocchioClassReference 
	self visit: aPinocchioClassReference package.
	self visit: aPinocchioClassReference cls.
	self visit: aPinocchioClassReference referenceName.
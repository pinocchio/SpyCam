visitor
visitClassReference: aPinocchioClassReference
	self visit: aPinocchioClassReference pinocchioClass.
	self visit: aPinocchioClassReference package.
	
	self put: aPinocchioClassReference 
		with: 'new_Organization_ClassReference(',
					'(Type_Class)', aPinocchioClassReference pinocchioClass uid, ')'.
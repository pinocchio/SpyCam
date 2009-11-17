visitor
visitClassReference: aPinocchioClassReference 
	self visit: aPinocchioClassReference referenceName.
	self visit: aPinocchioClassReference pinocchioClass.
	self visit: aPinocchioClassReference package.
	
	self put: aPinocchioClassReference 
		with: 'new_Organization_ClassReference(',
					'(Object)', aPinocchioClassReference pinocchioClass uid, ', ', 
					'(Object)', aPinocchioClassReference package uid, ')'.
	
	stream nextPutAll: '((Organization_ClassReference)';
		nextPutAll: aPinocchioClassReference uid;
		nextPutAll: ')->name = ';
		nextPutAll: aPinocchioClassReference referenceName uid;
		nextPutAll: ';'; cr.
	
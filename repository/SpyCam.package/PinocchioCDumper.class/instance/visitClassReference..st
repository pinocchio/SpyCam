visitor
visitClassReference: aPinocchioClassReference 
	"Don't visit the other elements at first"
	self visit: aPinocchioClassReference referenceName.
	
	self put: aPinocchioClassReference 
		with: 'new_Organization_ClassReference(',
					'(Object)', aPinocchioClassReference pinocchioClass uid, ', ', 
					'(Object)', aPinocchioClassReference package uid, ')'.
	
	stream nextPutAll: '((Organization_ClassReference)';
		nextPutAll: aPinocchioClassReference uid;
		nextPutAll: ')->name = ';
		nextPutAll: aPinocchioClassReference referenceName uid;
		nextPutAll: ';'; cr.
	
	self visit: aPinocchioClassReference package.
	self visit: aPinocchioClassReference pinocchioClass.
convenience
declareClassReference: aPClassReference
	self comment: aPClassReference pclass sclass name.
	self put: aPClassReference 
		with: 'new_Organization_ClassReference(',
					'(Type_Class)', aPClassReference pclass uid, ')'.
	
	
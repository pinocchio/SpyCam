visitor
visitClassReference: aPinocchioClassReference
	| oldClass |
	self put: aPinocchioClassReference 
		with: 'new_Organization_ClassReference(',
					'(Type_Class)', aPinocchioClassReference pclass uid, ')'.
	
	oldClass := self currentClass.
	self currentClass: aPinocchioClassReference pclass.
	self visit: aPinocchioClassReference pclass.
	self currentClass: oldClass.
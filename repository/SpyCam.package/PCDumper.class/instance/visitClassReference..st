visitor
visitClassReference: aPinocchioClassReference
	
	| oldClass |
	oldClass := self currentClass.
	self currentClass: nil.
	self visit: aPinocchioClassReference pclass.
	self currentClass should be isNil.
	self currentClass: oldClass.
	
	self put: aPinocchioClassReference 
		with: 'new_Organization_ClassReference(',
					'(Type_Class)', aPinocchioClassReference pclass uid, ')'.
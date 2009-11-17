visitor
visitMethod: aPinocchioMethod
	self newline.
	self comment: (self currentClass name asString, '>>', aPinocchioMethod selector asString). 
	self visit: aPinocchioMethod params.	
	self visit: aPinocchioMethod locals.
	self visit: aPinocchioMethod body.
	self put: aPinocchioMethod 
		with: ('new_AST_Method_with(',
						'(Type_Array)', aPinocchioMethod params uid, ', ',
						'(Type_Array)', aPinocchioMethod locals uid, ', ',
						'(Type_Array)', aPinocchioMethod body uid, ')').
	self installMethod: aPinocchioMethod.
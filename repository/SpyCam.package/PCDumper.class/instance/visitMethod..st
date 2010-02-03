visitor
visitMethod: aPinocchioMethod
	self newline.
	self comment: (self currentClass name asString, '>>', aPinocchioMethod selector asString).
	self createMethodSourceCommentFor: aPinocchioMethod.
	self visit: aPinocchioMethod params.	
	self visit: aPinocchioMethod locals.
	self visitCollection: aPinocchioMethod.
	self createSized: aPinocchioMethod 
		with: ('new_AST_Method_with(',
						'(Type_Array)', aPinocchioMethod params uid, ', ',
						'(Type_Array)', aPinocchioMethod locals uid).
	self installMethod: aPinocchioMethod.
	self newline.
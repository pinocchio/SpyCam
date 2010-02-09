visitor
visitMethod: aPMethod
	self newline.
	self comment: (self currentClass name asString, '>>', aPMethod selector asString).
	self createMethodSourceCommentFor: aPMethod.
	self visit: aPMethod params.	
	self visit: aPMethod locals.
	self visitCollection: aPMethod.
	self createSized: aPMethod 
		with: ('new_AST_Method_with(',
						'(Type_Array)', aPMethod params uid, ', ',
						'(Type_Array)', aPMethod locals uid).
	self installPInfoOn: aPMethod.
	self installMethod: aPMethod.
	self newline.
	
	globals add: aPMethod.
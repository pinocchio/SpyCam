visitor
visitBlock: aPinocchioBlock 
	self visit: aPinocchioBlock params.
	self visit: aPinocchioBlock locals.
	self visit: aPinocchioBlock body.
	self put: aPinocchioBlock 
		with: ('new_AST_Block_with(', 
			'(Type_Array)', aPinocchioBlock params uid,', ',
			'(Type_Array)', aPinocchioBlock locals uid,', ',
			'(Type_Array)', aPinocchioBlock body uid,')').
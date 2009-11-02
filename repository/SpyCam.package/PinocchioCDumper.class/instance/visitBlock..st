visitor
visitBlock: aPinocchioBlock 
	self visit: aPinocchioBlock params.
	self visit: aPinocchioBlock locals.
	self visit: aPinocchioBlock body.
	self put: aPinocchioBlock 
		with: ('new_AST_Block_With(', 
			aPinocchioBlock params uid,', ',
			aPinocchioBlock locals uid,', ',
			aPinocchioBlock body uid,')').
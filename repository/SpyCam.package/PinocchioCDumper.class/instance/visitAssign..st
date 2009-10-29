visitor
visitAssign: aPinocchioAssign	
	self visit: aPinocchioAssign variable.
	self visit: aPinocchioAssign expression.
	self put: aPinocchioAssign 
		with: 'new_AST_Assign(' , aPinocchioAssign variable uid , ', ',
				aPinocchioAssign expression uid , ')'
visitor
visitConstant: aPinocchioConstant
	self visit: aPinocchioConstant constant.
	self put: aPinocchioConstant
		with: ('new_AST_Constant(' , aPinocchioConstant constant uid , ')').

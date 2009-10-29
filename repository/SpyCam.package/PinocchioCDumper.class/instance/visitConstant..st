visitor
visitConstant: aPinocchioConstant
	self visit: aPinocchioConstant constant.
	self put: aPinocchioConstant
		with: ('new_Type_Constant(' , aPinocchioConstant constant uid , ')').

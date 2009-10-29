visitor
visitConstant: aPinocchioConstant
	aPinocchioConstant printed ifFalse: [
		aPinocchioConstant printed: true.
		self visit: aPinocchioConstant constant.
		self 
			put: aPinocchioConstant
			with: ('new_Type_Constant(' , aPinocchioConstant constant uid , ')') asString.
	]
visitor
visitInstanceVariable: aPinocchioInstanceVariable 
	self put: aPinocchioInstanceVariable 
		with: ('new_AST_InstVariable(', aPinocchioInstanceVariable index asString
										,', L"', aPinocchioInstanceVariable name, '")').
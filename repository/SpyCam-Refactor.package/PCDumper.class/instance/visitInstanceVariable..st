visitor
visitInstanceVariable: aPinocchioInstanceVariable 
	self put: aPinocchioInstanceVariable 
		with: ('new_AST_InstVariable(', aPinocchioInstanceVariable localId asString
										,', L"', aPinocchioInstanceVariable name, '")').
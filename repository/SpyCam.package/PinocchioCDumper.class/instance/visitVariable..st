visitor
visitVariable: aPinocchioVariable 
	aPinocchioVariable printed ifFalse: [
		aPinocchioVariable printed: true.
		self 
			put: aPinocchioVariable
			with: 'new_Type_Variable(L"' , aPinocchioVariable name , '")'.
	]
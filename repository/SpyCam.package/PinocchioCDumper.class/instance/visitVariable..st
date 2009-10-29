visitor
visitVariable: aPinocchioVariable 
	aPinocchioVariable printed ifFalse: [
		aPinocchioVariable printed: true.
		self 
			put: aPinocchioVariable
			with: 'new_Type_Variable(' , 'new_Type_String(L"' , aPinocchioVariable name , '"))'.
	]
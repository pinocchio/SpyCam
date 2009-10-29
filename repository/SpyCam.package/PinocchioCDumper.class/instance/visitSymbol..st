visitor
visitSymbol: aPinocchioSymbol
	aPinocchioSymbol printed ifFalse: [
		aPinocchioSymbol printed: true.
		self 
			put: aPinocchioSymbol
			with: ('new_Type_Symbol(L"' , aPinocchioSymbol symbol, '")') asString.
	]
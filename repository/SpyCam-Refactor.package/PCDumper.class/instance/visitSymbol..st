visitor
visitSymbol: aPinocchioSymbol
	self put: aPinocchioSymbol
		with: ('new_Type_Symbol_cached(L"' , aPinocchioSymbol symbol asString cEscaped, '")').
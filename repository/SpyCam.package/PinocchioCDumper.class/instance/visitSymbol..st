visitor
visitSymbol: anASTSymbol
	self putNewInstance: anASTSymbol 
		with: (('new_Type_Symbol(L"', (anASTSymbol symbol), '")') asString).
	stream cr.
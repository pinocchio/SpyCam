visitor
visitSymbol: anASTSymbol 
	self 
		put: anASTSymbol
		with: ('new_Type_Symbol(L"' , anASTSymbol symbol , '")') asString.
	stream cr
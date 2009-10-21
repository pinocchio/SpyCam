visitor
visitVariable: anASTVariable 
	self 
		put: anASTVariable
		with: 'new_Type_Variable(' , 'new_Type_String(L"' , anASTVariable name , '"))'.
	stream cr
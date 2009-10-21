visitor
visitString: anASTString 
	self 
		put: anASTString
		with: ('new_Type_String(L"' , anASTString string , '")') asString.
	stream cr
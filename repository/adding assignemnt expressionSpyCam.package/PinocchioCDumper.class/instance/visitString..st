visitor
visitString: anASTString
	self putNewInstance: anASTString 
		with: (('new_Type_String(L"', (anASTString string), '")') asString).
	stream cr.
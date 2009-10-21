visitor
visitNumber: anASTNumber 
	self 
		put: anASTNumber
		with: ('new_Type_SmallInt(' , anASTNumber asInteger asString , ')') asString.
	stream cr
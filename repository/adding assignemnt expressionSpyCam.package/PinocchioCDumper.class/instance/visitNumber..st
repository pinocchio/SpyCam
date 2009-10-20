visitor
visitNumber: anASTNumber
	self putNewInstance: anASTNumber 
		with: (('new_Type_SmallInt(', (anASTNumber asInteger asString), ')') asString).
	stream cr.
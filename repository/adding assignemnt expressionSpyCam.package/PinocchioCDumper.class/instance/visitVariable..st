visitor
visitVariable: anASTVariable
	self putNewInstance: anASTVariable 
		with: ('new_Type_Variable(',
				'new_Type_String(L"', (anASTVariable name), '"))').
	stream cr.
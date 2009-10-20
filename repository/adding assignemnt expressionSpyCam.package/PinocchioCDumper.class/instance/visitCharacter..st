visitor
visitCharacter: anASTCharacter
	self putNewInstance: anASTCharacter 
		with: (('new_Type_Character(L''', (anASTCharacter char), ''')') asString).
	stream cr.
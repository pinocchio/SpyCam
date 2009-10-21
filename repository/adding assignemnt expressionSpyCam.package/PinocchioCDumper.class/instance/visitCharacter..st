visitor
visitCharacter: anASTCharacter 
	self 
		put: anASTCharacter
		with: ('new_Type_Character(L''' , anASTCharacter char , ''')') asString.
	stream cr
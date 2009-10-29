visitor
visitCharacter: aPinocchioCharacter 
	aPinocchioCharacter printed ifFalse: [
		aPinocchioCharacter printed: true.
		self 
			put: aPinocchioCharacter
			with: ('new_Type_Character(L''' , aPinocchioCharacter char , ''')') asString.
	]
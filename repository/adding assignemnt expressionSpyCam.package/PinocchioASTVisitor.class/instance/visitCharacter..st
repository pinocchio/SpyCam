visitor
visitCharacter: anASTCharacter 
	^PinocchioConstant new constant: (PinocchioCharacter new char: (anASTCharacter char))
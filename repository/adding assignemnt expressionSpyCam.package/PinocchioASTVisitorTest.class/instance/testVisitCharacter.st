running
testVisitCharacter
	| character result |
	character := ASTCharacter new char: 'c'.
	result := visitor visit: character.
	self assert: (result class = PinocchioConstant).
	self assert: (result constant class = PinocchioCharacter).
	self assert: (result constant char = 'c').
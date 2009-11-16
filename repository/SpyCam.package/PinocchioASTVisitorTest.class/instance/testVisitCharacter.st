running
testVisitCharacter
	| character result |
	character := ASTCharacter new char: 'c'.
	result := visitor visit: character.
	result class should = PinocchioConstant.
	result constant class should = PinocchioCharacter.
	result constant char should = $c.
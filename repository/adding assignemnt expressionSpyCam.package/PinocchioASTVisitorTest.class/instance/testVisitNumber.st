running
testVisitNumber
	| number result |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	self assert: (result class = PinocchioConstant).
	self assert: (result constant class = PinocchioSmallInt).
	self assert: (result constant int = -43).
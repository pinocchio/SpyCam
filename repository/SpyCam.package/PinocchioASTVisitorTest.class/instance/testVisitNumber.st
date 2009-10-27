running
testVisitNumber
	| number result |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	result class should = PinocchioConstant.
	result constant class should = PinocchioSmallInt.
	result constant int should = -43.
running
testVisitString
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result class should = PinocchioConstant.
	result constant class should = PinocchioString.
	result constant string should = 'My funky test string.'.
running
testVisitString
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result class should = PinocchioString.
	result string should = 'My funky test string.'.
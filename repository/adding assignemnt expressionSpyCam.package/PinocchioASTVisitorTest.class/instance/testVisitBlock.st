running
testVisitBlock
	"TODO Write this Test
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	self assert: (result class = PinocchioString).
	self assert: (result string = 'My funky test string.')."
	self fail
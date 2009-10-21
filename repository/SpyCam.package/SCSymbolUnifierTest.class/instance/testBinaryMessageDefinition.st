tests
testBinaryMessageDefinition
	| ast1 ast2 |
	ast1 := self ast: 'a = 2.'.
	parser := scparser binaryMessageDefinition.
	ast2 := self ast: '= a'.
	self assert: (ast2 selector class = ASTSymbol).
	self assert: (ast1 selector == ast2 selector).
tests
testBinaryExpression
	| ast1 ast2 |
	ast1 := self ast: 'a = 2.'.
	self assert: (ast1 selector class = ASTSymbol).
	ast2 := self ast: 'a = 2.'.
	self assert: (ast2 selector class = ASTSymbol).
	self assert: (ast1 selector == ast2 selector).
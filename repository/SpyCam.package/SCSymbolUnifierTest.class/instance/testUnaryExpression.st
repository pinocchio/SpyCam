tests
testUnaryExpression
	| ast1 ast2 |
	ast1 := self ast: 'a asString.'.
	self assert: (ast1 selector selector class = ASTSymbol).
	ast2 := self ast: 'b asString.'.
	self assert: (ast2 selector selector class = ASTSymbol).
	self assert: (ast1 selector selector == ast2 selector selector).
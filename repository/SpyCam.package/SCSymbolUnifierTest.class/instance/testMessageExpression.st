tests
testMessageExpression
	| ast1 ast2 |
	ast1 := self ast: 'a new: 1 with: 2.'.
	self assert: (ast1 selector class = ASTSymbol).
	ast2 := self ast: 'b new: 3 with: 4.'.
	self assert: (ast2 selector class = ASTSymbol).
	self assert: (ast1 selector == ast2 selector).
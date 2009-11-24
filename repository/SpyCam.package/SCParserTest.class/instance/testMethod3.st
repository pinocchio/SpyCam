tests
testMethod3
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "
	| parser string result |
	parser := scparser method.
	string := 'withA: a withB: b withC: c
		^ 1
	'.
	result := parser parse: string.
	self assert: result class = ASTMethod.
	self assert: result message asString = 'withA:withB:withC:'
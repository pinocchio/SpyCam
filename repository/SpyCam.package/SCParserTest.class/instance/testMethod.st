tests
testMethod
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "
	| parser string result |
	parser := scparser method.
	string := 'a: b c: d
			|x y z|
			<abc: 1 def: (2+2) ghi: (3 b)>
			<a: 4>
			<boe>
			1 + [ |a| a ] value: 3.
			^ 7 '.
	result := parser parse: string.
	self assert: result hasReturnExpression.
	self assert: result class = ASTMethod.
	self assert: result message class = ASTKeywordMessageDefinition.
	self assert: result temporaries size = 3.
	self assert: result annotations size = 3.
	self assert: result statements size = 2.

tests
testAnnotation
	| parser string result arg |
	
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	parser := scparser annotation.

	string := PEGMemoizedStringScanner on: '<abc: 1 def: 2+2 ghi: 3 b> '.
 	result := (parser match: string).
	self assert: (result class = ASTMessageExpression).
	self assert: (result keywords asArray = #('abc' 'def' 'ghi')).
	arg := (result arguments at: 1).
	self assert: arg class = ASTNumber.
	arg := (result arguments at: 2).
	self assert: arg class = ASTBinaryExpression.
	arg := (result arguments at: 3).
	self assert: arg class = ASTUnaryExpression.
	self assert: (string position = 26).
	
	string := PEGMemoizedStringScanner on: '<abc> '.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector = 'abc').
	self assert: (string position = 5).
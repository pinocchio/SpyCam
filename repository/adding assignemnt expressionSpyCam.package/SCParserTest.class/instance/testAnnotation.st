tests
testAnnotation
	| parser string result arg |
	
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	parser := scparser annotation.

	string := PEGMemoizedStringScanner on: '<abc: 1 def: (2 + 3) ghi: (3 b)>'.
 	result := (parser match: string).
	self assert: (result class = ASTKeywordAnnotation).
	self assert: (result keywords asArray = #('abc' 'def' 'ghi')).
	arg := (result arguments at: 1).
	self assert: arg class = ASTNumber.
	arg := (result arguments at: 2).
	self assert: arg class = ASTBinaryExpression.
	arg := (result arguments at: 3).
	self assert: arg class = ASTUnaryExpression.
	self assert: (string atEnd).
	
	string := PEGMemoizedStringScanner on: '<abc> '.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryAnnotation).
	self assert: (result selector printString = 'abc').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '<temps: 4 annotations: 1 statements: 2>'.
 	result := (parser match: string).
	self assert: (result class = ASTKeywordAnnotation).
	self assert: (result keywords asArray = #('temps' 'annotations' 'statements')).
	self assert: (string atEnd).
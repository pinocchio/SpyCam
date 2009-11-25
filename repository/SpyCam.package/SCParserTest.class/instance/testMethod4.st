tests
testMethod4
	| parser string result |
	parser := scparser method.
	string := 'withA: a withB: b withC: c
		a := b > c.
		a ifTrue: [^ b]
		  ifFalse: [^ c]
	'.
	result := parser parse: string.
	self assert: result hasReturnExpression.
	self assert: result class = ASTMethod.
	self assert: result message asString = 'withA:withB:withC:'.
	self assert: result statements last hasReturnExpression.
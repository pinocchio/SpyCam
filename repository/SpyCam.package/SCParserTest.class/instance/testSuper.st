tests
testSuper
	| parser string message return |
	parser := scparser messageExpression.
	
	string := PEGMemoizedStringScanner on: 'super do: this and: that'.
 	message := parser match: string.
	message receiver class should = ASTSuper.
	
	parser := scparser return.
	string := PEGMemoizedStringScanner on: '^ super do: this and: that'.
 	return := parser match: string.
	return class should = ASTReturnExpression.
	return expression receiver class should = ASTSuper.
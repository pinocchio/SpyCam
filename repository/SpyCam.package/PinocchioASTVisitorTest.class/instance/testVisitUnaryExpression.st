running
testVisitUnaryExpression
	| ast |
	parser := scparser unaryExpression.
	ast := self ast: 'MetaClass new'.
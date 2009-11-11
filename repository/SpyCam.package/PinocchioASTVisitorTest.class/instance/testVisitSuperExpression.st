running
testVisitSuperExpression
	| ast |
	parser := scparser expression.
	ast := self ast: 'super a: 2'.
	ast class should = PinocchioSuper.
	ast message class should = PinocchioSymbol.
	ast message symbol class should = ByteString.
	ast arguments class should = PinocchioArray.
running
testVisitKeywordExpression
	| ast |
	parser := scparser expression.
	ast := self ast: 'true a: 2'.
	ast message class should = PinocchioSymbol.
	ast message symbol class should = ByteSymbol.
	ast message symbol asString should = 'a:'.
	ast arguments class should = PinocchioArray.
	ast receiver class should = PinocchioInternalVariable.
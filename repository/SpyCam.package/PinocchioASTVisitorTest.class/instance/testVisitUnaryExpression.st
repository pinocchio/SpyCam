running
testVisitUnaryExpression
	| ast |
	parser := scparser unaryExpression.
	ast := self ast: 'true not'.
	ast message class should = PinocchioInternalSymbol.
	ast message symbol class should = ByteSymbol.
	ast message symbol asString should = 'not'.
	ast arguments class should = PinocchioArray.
	ast receiver class should = PinocchioInternalVariable.
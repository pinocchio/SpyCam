running
testVisitMethodMultipleArgs
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt: a withA: b withB: c withC: d' , String cr , ' a + 2.'.
	ast class should = PinocchioMethod.
	ast depth should = 0.
	ast selector class should = PinocchioSymbol.
	ast selector asString should = 'doIt:withA:withB:withC:'.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast locals size should = 0.
	ast params size should = 4.
	ast hasReturn should = false.
	ast size should = (1+1).
	(ast params at: 1) class should = PinocchioLocalVariable.
	ast last class should = PinocchioSelf.
	
	self assureLastIsReturningSelf: ast
running
testVisitMethod1Locals
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|' , String cr , ' a + 2.'.
	ast class should = PinocchioMethod.
	ast hasReturn should = false.
	ast body class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body size should = (1+1).
	ast locals size should = 1.
	ast params size should = 0.
	self assureLastIsReturningSelf: ast body
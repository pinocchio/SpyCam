running
testVisitMethod1Arg
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , ' a + 2.'.
	ast class should = PinocchioMethod.
	ast hasReturn should = false.
	ast body class should = PinocchioArray.
	ast body size should = (1+1).
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast locals size should = 0.
	ast params size should = 1.
	
	self assureLastIsReturningSelf: ast body
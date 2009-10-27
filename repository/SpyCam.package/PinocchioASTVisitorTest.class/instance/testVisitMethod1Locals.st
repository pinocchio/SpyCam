running
testVisitMethod1Locals
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|' , String cr , ' a + 2.'.
	ast class should = PinocchioMethod.
	ast hasReturn should = false.
	ast body class should = PinocchioBlock.
	ast body body size should = (1+1).
	ast body locals size should = 1.
	ast body params size should = 0.
	self assureLastIsReturningSelf: ast body
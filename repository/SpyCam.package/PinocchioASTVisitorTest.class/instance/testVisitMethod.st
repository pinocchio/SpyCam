running
testVisitMethod
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' 1 + 2.'.
	ast class should = PinocchioMethod.
	ast hasReturn should  = false.
	ast body class should = PinocchioBlock.
	ast body body size should = (1+1).
	ast body locals size should = 0.
	ast body params size should = 0.
	self assureLastIsReturningSelf: ast body
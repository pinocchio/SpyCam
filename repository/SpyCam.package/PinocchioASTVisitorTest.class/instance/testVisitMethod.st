running
testVisitMethod
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' 1 + 2.'.
	ast class should = PinocchioMethod.
	ast hasReturn should  = false.
	ast selector class should = PinocchioSymbol.
	ast selector asString should = 'doIt'.
	ast body class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body size should = (1+1).
	ast locals size should = 0.
	ast params size should = 0.
	self assureLastIsReturningSelf: ast body
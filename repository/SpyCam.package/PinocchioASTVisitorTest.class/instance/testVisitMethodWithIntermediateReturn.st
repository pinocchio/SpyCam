running
testVisitMethodWithIntermediateReturn
	| ast block return |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' true ifTrue: [^ self bla: a foo: b bar: c].'.
	[^ nil] value.
	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body class should = PinocchioArray.
	ast body size should = 1.
	block := ast body first.
	ast locals size should = 0.
	ast body params size should = 0.
	block body class should = PinocchioArray.
	block body size should = 1.
	(block body values at: 1) class should = PinocchioCallec.
	block := (block body values at: 1) block.
	block class should = PinocchioBlock.
	block body size should = 2.
	block locals size should = 3.
	block params size should = 1.
	(block body values at: 1) class should = PinocchioSend.
	self assureLastIsReturningSelf: block.
	
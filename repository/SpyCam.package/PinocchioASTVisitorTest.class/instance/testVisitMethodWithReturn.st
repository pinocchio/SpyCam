running
testVisitMethodWithReturn
	| ast block return |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' ^ self bla: a foo: b bar: c.'.
	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioBlock.
	block body size should = 1.
	block locals size should = 0.
	block params size should = 0.
	block body class should = PinocchioArray.
	block body size should = 1.
	(block body values at: 1) class should = PinocchioCallec.
	block := (block body values at: 1) block.
	block class should = PinocchioBlock.
	block body size should = 1.
	block locals size should = 3.
	block params size should = 1.
	(block body values at: 1) class should = PinocchioReturn.
	return := block body last.
	return class should = PinocchioReturn.
	return argument class should = PinocchioSend.
	return argument message printString should = 'bla:foo:bar:'.
	
running
testVisitMethodWithReturn
	| ast block return body |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' ^ self bla: a foo: b bar: c.'.
	[^ nil] value.
	ast class should = PinocchioMethod.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast hasReturn should = true.
	body := ast body.
	body class should = PinocchioArray.
	
	body size should = 1.
	ast locals size should = 0.
	ast params size should = 0.
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
	return argument message asString should = 'bla:foo:bar:'.
	
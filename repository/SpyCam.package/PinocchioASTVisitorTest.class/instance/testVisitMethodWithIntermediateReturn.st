running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' true ifTrue: [^ 1].'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body class should = PinocchioArray.
	ast body size should = 2. "send, self"
	ast body first class should = PinocchioSend.
	(ast body at: 2) class should = PinocchioSelf.
	
	returningBlock := ast body first arguments first.
	returningBlock class should = PinocchioBlock.
	returningBlock body size should = 1.
	return := returningBlock body first.
	
	return class should = PinocchioSend.
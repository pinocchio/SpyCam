running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock send |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , 'a ifTrue: [^ 1].'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	block := ast body.
	block class should = PinocchioArray.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast body class should = PinocchioArray.
	ast body size should = 1. "callec on: [return. self]"
	send := ast body first.
	send class should = PinocchioSend.
	send message asString should = 'on:'.
	send receiver class should = PinocchioInternalVariable.
	
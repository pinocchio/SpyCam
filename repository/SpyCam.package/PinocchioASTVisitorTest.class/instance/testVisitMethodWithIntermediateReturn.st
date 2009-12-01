running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock send callecBody |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , 'a ifTrue: [^ 1].'.

	ast class should = PinocchioMethod.
	ast hasReturn should = true.
	ast depth should = 0.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast size should = 1. "callec on: [return. self]"
	send := ast first.
	send class should = PinocchioSend.
	send message asString should = 'on:'.
	send receiver class should = PinocchioInternalVariable.
	callecBody := send arguments first.
	callecBody class should = PinocchioBlock.
	callecBody depth should = 1.
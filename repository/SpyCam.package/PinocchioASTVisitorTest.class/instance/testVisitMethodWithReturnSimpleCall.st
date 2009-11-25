running
testVisitMethodWithReturnSimpleCall
	| ast return body send |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ self foo'.
	ast class should = PinocchioMethod.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast locals size should = 0.
	ast params size should = 0.
	ast hasReturn should = true.
	
	body := ast body.
	body class should = PinocchioArray.
	
	body size should = 1. "Just a send: self foo"
	send := body first.
	send class should = PinocchioSend.
	send receiver class should = PinocchioSelf.
	send message asSymbol should = #foo 
	
	
	
	
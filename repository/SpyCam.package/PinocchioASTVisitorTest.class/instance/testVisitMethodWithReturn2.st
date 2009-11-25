running
testVisitMethodWithReturn2
	| ast block return body send |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' a := b+c. ^ self foo: a bar: b baz: c.'.
	ast class should = PinocchioMethod.
	ast params class should = PinocchioArray.
	ast locals class should = PinocchioArray.
	ast hasReturn should = true.
	body := ast body.
	body class should = PinocchioArray.
	
	body size should = 2. "assignment. return"
	ast locals size should = 3.
	ast params size should = 0.
	send := body last.
	send class should = PinocchioSend.
	send receiver class = PinocchioSelf.
	send message asSymbol should = #foo:bar:baz:
	
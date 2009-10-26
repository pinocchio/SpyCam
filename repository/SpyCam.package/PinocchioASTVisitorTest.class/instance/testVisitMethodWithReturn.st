running
testVisitMethodWithReturn
	| ast block |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|', String cr , ' ^ #(a b c).'.
	
	self assert: ast class = PinocchioClosure.
	block := ast code.
	self assert: block class = PinocchioBlock.
	self assert: block body size = 1.
	self assert: block locals size = 0.
	self assert: block params size = 0.
	self assert: block body class = PinocchioArray.
	self assert: block body size = 1.
	self assert: (block body values at: 1) class = PinocchioCallec.
	block := (block body values at: 1) block.
	self assert: block class = PinocchioBlock.
	self assert: block body size = 1.
	self assert: block locals size = 3.
	self assert: block params size = 1
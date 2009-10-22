running
testVisitMethodWithReturn
	| ast block |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ 1.'.
	self assert: ast class = PinocchioClosure.
	block := ast code.
	self assert: block class = PinocchioBlock.
	self assert: block body size = 1.
	self assert: block locals size = 0.
	self assert: block params size = 0
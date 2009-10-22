running
testVisitMethod1Locals
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|', String cr, ' a + 2.'.
	self assert: ast class = PinocchioClosure.
	self assert: ast code class = PinocchioBlock.
	self assert: ast code body size = 1.
	self assert: ast code locals size = 1.
	self assert: ast code params size = 0
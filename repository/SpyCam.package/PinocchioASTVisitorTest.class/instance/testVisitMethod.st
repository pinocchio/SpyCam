running
testVisitMethod
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' 1 + 2.'.
	self assert: ast class = PinocchioClosure.
	self assert: ast code class = PinocchioBlock.
	self assert: ast code body size = 1.
	self assert: ast code locals size = 0.
	self assert: ast code params size = 0
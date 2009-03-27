tests
testASTClassEquals
	self deny: classA = classB.
	self assert: classA = classA.
	self assert: classB = classB.
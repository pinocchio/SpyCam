tests
testASTClassEquals
	self assert: (classA = classB) not.
	classA should = classA.
	classB should = classB
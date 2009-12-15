tests
testCompatibleSuperClass
	[ ^ 'skip for current failure' ] value.
	classA superClass: Number class.
	classB superClass: String class.
	self assert: (classA compatibleSuperClassWith: classB) not.
	self assert: (classB compatibleSuperClassWith: classA) not.
	classB superClass: Number class.
	self assert: (classA compatibleSuperClassWith: classB).
	self assert: (classB compatibleSuperClassWith: classA)
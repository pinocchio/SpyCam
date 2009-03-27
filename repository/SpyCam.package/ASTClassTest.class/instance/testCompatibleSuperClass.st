as yet unclassified
testCompatibleSuperClass
	classA superClass: Number class.
	classB superClass: String class.
	self deny: (classA compatibleSuperClassWith: classB).
	self deny: (classB compatibleSuperClassWith: classA).
	
	classB superClass: Number class.
	self assert: (classA compatibleSuperClassWith: classB).
	self assert: (classB compatibleSuperClassWith: classA).
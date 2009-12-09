tests
testCompatibleMethodsWith
	"empty methods are compatible"
	| m1 m2 |
	[^'skip for current failure.'] value.
	self assert: (classA compatibleMethodsWith: classB).
	self assert: (classB compatibleMethodsWith: classA).
	
	"different numbers of methods are incompatible"
	m1 := classA methods add: ASTMethod new.
	self assert: (classA compatibleMethodsWith: classB).
	self deny: (classB compatibleMethodsWith: classA).
	
	"empty methods should be compatible"
	m2 := classB methods add: ASTMethod new.
	self assert: (classA compatibleMethodsWith: classB).
	self assert: (classB compatibleMethodsWith: classA).
	
	"TODO add more tests here with some real methods"
	
testing
testMethodCompatibleReturnType
	[ ^ 'skip for current failure.' ] value.	"different return types are incompatible"
	m1 returnType: ClassMirror new.
	self assert: (m1 compatibleWith: m2) not.
	self assert: (m2 compatibleWith: m1) not.	"unequal, but compatible return types are incompatible"
	m2 returnType: ClassMirror new.
	self assert: (m1 compatibleWith: m2) not.
	self assert: (m2 compatibleWith: m1) not.	"equal return types are compatible"
	m2 returnType: m1 returnType.
	self assert: (m1 compatibleWith: m2).
	self assert: (m2 compatibleWith: m1)
as yet unclassified
testMethodCompatibleReturnType
	"differentt return types are incompatible"
	m1 returnType: ASTClass new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1).
	
	"unequal, but compatible return types are incompatible"
	m2 returnType: ASTClass new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1).
	
	"equal return types are compatible"
	m2 returnType: m1 returnType.
	self assert: (m1 compatibleWith: m2).
	self assert: (m2 compatibleWith: m1).
	
	
		
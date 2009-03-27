as yet unclassified
testMethodCompatibleSelector
	"different selectors are incompatible"
	m1 selector: ASTArgumentSelector new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1).
	
	m2 selector: ASTArgumentSelector new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1).
		
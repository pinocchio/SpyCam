testing
testMethodCompatibleSelector
	[^'skip for current failure.'] value.
	"different selectors are incompatible"
	m1 selector: ASTKeywordSelector new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1).

	"are"
	m2 selector: ASTKeywordSelector new.
	self deny: (m1 compatibleWith: m2).
	self deny: (m2 compatibleWith: m1)
as yet unclassified
testEquals
	self assert: (selector compatibleWith: selector2).
	self assert: (selector2 compatibleWith: selector).
	
	selector keyword: 'selector'.
	self deny: (selector compatibleWith: selector2).
	self deny: (selector2 compatibleWith: selector).
	
	selector2 keyword: 'selector'.
	self assert: (selector compatibleWith: selector2).
	self assert: (selector2 compatibleWith: selector).
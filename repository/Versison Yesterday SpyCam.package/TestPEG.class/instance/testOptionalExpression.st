tests
testOptionalExpression
	| string exp1 exp2 exp |
	string := PEGMemoizedStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp := PEGOptionalExpression new: exp1.
	self assert: (exp 
			match: string) isNil not.
	self assert: string position = 2.
		self assert: (exp 
			match: string) isNil not.
	self assert: string position = 2.
	exp := PEGOptionalExpression new: exp2.
	self assert: (exp 
			match: string) isNil not.
	self assert: string position = 4.
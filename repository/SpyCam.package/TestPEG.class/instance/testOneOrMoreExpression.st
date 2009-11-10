tests
testOneOrMoreExpression
	| string exp1 exp2 exp3 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.
	exp := PEGOneOrMoreExpression new: exp1.
	self assert: (exp 
			match: string) isNil not.
	self assert: string position = 2.
	exp := PEGOneOrMoreExpression new: exp2.
	self assert: (exp 
			match: string) isNil not.
	self assert: string position = 6.
	self assert: (exp 
			match: string) isNil.
	self assert: string position = 6
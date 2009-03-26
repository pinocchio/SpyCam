as yet unclassified
testNotExpression
	| string exp1 exp2 exp |
	string := PEGMemoizedStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp := PEGNotExpression new: exp1.
	self assert: (exp 
			match: string) isNil.
	self assert: string position = 0.
	exp := PEGNotExpression new: exp2.
	self assert: (exp 
			match: string) isNil not.
	self assert: string position = 1.
	
	" Fail on end of string. "
	string := PEGMemoizedStringScanner on: ''.
	self assert: (exp 
		match: string) isNil.
tests
testNotExpression
	| string exp1 exp2 exp exp3 |
	string := PEGMemoizedStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp := PEGNotExpression new: exp1.
	self assert: (exp 
			match: string) isNil.
	self assert: string position = 0.
	exp := PEGNotExpression new: exp2.
	self assert: (exp 
			match: string) = 't'.
	self assert: string position = 1.
	
	" Fail on end of string. "
	string := PEGMemoizedStringScanner on: ''.
	self assert: (exp 
		match: string) isNil.
		
	string := PEGMemoizedStringScanner on: 'test'.
	exp3 := 'x' asPEG not consume: false.
	self assert: (exp3
			match: string) isNil not.
	self assert: string position = 0.
	
	exp3 := 'x' asPEG not.
	self assert: (exp3
			match: string) = 't'.
	self assert: string position = 1.
	
	string := PEGMemoizedStringScanner on: ''.
	exp3 := 'x' asPEG not consume: false.
	self assert: (exp3
			match: string) isNil not.
	self assert: string position = 0.
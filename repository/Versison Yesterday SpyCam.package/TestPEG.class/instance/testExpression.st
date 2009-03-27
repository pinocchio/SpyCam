tests
testExpression
	| string exp1 exp2 exp3 |
	string := PEGMemoizedStringScanner on: 'teest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.

	" test string which occurs later on. "
	self assert: nil = (exp2 
				match: string).
	self assert: string position = 0.
	self assert: 'te' = (exp1 
				match: string).
	self assert: string position = 2.
	self assert: nil = (exp1 
				match: string).
	self assert: string position = 2.
	self assert: 'es' = (exp2 
				match: string).
	self assert: string position = 4.
	self assert: nil = (exp2 
				match: string).
	self assert: string position = 4.
	self assert: 't' = (exp3 
				match: string).
	self assert: string position = 5.
	self assert: nil = (exp3 
				match: string).
	self assert: string position = 5
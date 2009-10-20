tests
testOrderedChoiceExpression
	| string exp1 exp2 exp3 seq1 |
	string := PEGMemoizedStringScanner on: 'teest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.
	seq1 := PEGOrderedChoiceExpression new.
	seq1 <= exp1 <= exp2.
	seq1 
		match: string.
	self assert: string position = 2.
	seq1 
		match: string.
	self assert: string position = 4.
	seq1 
		match: string.
	self assert: string position = 4
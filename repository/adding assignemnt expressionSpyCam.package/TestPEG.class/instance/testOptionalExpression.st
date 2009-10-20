tests
testOptionalExpression
	| string exp1 exp2 exp |
	string := PEGMemoizedStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp := PEGOptionalExpression new: exp1.
	
	self assert: ((exp match: string) resultIfFailed: [ 10 ]) = 'te'.
	self assert: string position = 2.
	self assert: ((exp match: string) resultIfFailed: [ 10 ]) = 10.
	self assert: string position = 2.
	exp := PEGOptionalExpression new: exp2.
	self assert: ((exp match: string) resultIfFailed: [ 10 ]) = 'es'.
	self assert: string position = 4
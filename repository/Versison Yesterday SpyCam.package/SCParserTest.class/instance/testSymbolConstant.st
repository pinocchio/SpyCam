tests
testSymbolConstant
	| parser string result |

	parser := SCParser symbolConstant.
	
	string := PEGMemoizedStringScanner on: '#abc'.
	result := (parser match: string).
	self assert: (result class = ASTSymbol).
	self assert: (result literal = 'abc').
	self assert: (string position = 4).
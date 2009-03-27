tests
testUnarySelector
	| parser string result |

	parser := SCParser unarySelector.
	
	string := PEGMemoizedStringScanner on: 'abcd bla'.
	result := (parser match: string).
	self assert: (result class = ASTUnarySelector).
	self assert: (result selector = 'abcd').
	self assert: (string position = 4).
	
	string := PEGMemoizedStringScanner on: 'abcd: bla'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
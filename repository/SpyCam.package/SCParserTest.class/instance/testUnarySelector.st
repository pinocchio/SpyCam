tests
testUnarySelector
	| parser string result |

	parser := scparser unarySelector.
	
	string := PEGStringScanner on: 'abcd bla'.
	result := (parser match: string).
	self assert: (result class = ASTUnarySelector).
	self assert: (result selector printString= 'abcd').
	self assert: (string position = 4).
	
	string := PEGStringScanner on: 'abcd: bla'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
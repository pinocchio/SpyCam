tests
testTemporaries
	| parser string |

	parser := SCParser temporaries.
	
	string := PEGMemoizedStringScanner on: '|a b c|'.
	self assert: ((parser match: string) asArray = #('a' 'b' 'c')).
	self assert: (string position = 7).
	
	string := PEGMemoizedStringScanner on: '|  a b c  |'.
	self assert: ((parser match: string) asArray = #('a' 'b' 'c')).
	self assert: (string position = 11).
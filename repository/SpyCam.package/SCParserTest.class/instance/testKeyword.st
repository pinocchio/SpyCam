tests
testKeyword
	| parser string |

	parser := SCParser keyword.
	
	string := PEGMemoizedStringScanner on: 'abcd: '.
	self assert: ((parser match: string) = 'abcd').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: 'abcd '.
	self assert: ((parser match: string) isNil).
	self assert: (string position = 0).
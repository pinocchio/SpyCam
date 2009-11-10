tests
testKeyword
	| parser string |

	parser := scparser keyword.
	
	string := PEGStringScanner on: 'abcd: '.
	self assert: ((parser match: string) = 'abcd').
	self assert: (string position = 5).
	
	string := PEGStringScanner on: 'abcd '.
	self assert: ((parser match: string) isNil).
	self assert: (string position = 0).
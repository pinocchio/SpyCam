tests
testSymbolKeywords
	| parser string |

	parser := scparser symbolKeywords.
	
	string := PEGStringScanner on: 'abcd:def: '.
	self assert: ((parser match: string) = 'abcd:def:').
	self assert: (string position = 9).
	
	string := PEGStringScanner on: 'abcd '.
	self assert: ((parser match: string) isNil).
	self assert: (string position = 0).
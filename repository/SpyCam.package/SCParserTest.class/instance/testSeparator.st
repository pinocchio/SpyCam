tests
testSeparator
	| parser string |

	parser := scparser separator.
	
	string := PEGStringScanner on: '"Test"'.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 6).
	
	string := PEGStringScanner on: ' 	"Test" "boe"	"" ab'.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 18).
	
	string := PEGStringScanner on: ''.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 0).
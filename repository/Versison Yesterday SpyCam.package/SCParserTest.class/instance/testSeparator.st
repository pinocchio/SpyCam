tests
testSeparator
	| parser string |

	parser := SCParser separator.
	
	string := PEGMemoizedStringScanner on: '"Test"'.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 6).
	
	string := PEGMemoizedStringScanner on: ' 	"Test" "boe"	"" ab'.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 18).
	
	string := PEGMemoizedStringScanner on: ''.
	self assert: (parser match: string) isNil not.
	self assert: (string position = 0).
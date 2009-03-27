tests
testIdentifier
	| parser string |

	parser := SCParser identifier.
	
	string := PEGMemoizedStringScanner on: 'abcd '.
	self assert: (parser match: string) = 'abcd'.
	self assert: (string position = 4).
	
	string := PEGMemoizedStringScanner on: 'AbCd145 '.
	self assert: (parser match: string) = 'AbCd145'.
	self assert: (string position = 7).
	
	string := PEGMemoizedStringScanner on: '1a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
tests
testIdentifier
	| parser string |

	parser := scparser identifier.
	
	string := PEGStringScanner on: 'abcd '.
	self assert: (parser match: string) = 'abcd'.
	self assert: (string position = 4).
	
	string := PEGStringScanner on: 'AbCd145 '.
	self assert: (parser match: string) = 'AbCd145'.
	self assert: (string position = 7).
	
	string := PEGStringScanner on: '1a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
tests
testCapitalIdentifier
	| parser string |

	parser := scparser capitalIdentifier.
	
	string := PEGStringScanner on: 'Abcd '.
	self assert: (parser match: string) = 'Abcd'.
	self assert: (string position = 4).
	
	string := PEGStringScanner on: 'AbCd145 '.
	self assert: (parser match: string) = 'AbCd145'.
	self assert: (string position = 7).
	
	string := PEGStringScanner on: 'abcdD'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
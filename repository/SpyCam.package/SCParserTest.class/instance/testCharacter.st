tests
testCharacter
	| parser string |

	parser := scparser character.
	
	string := PEGStringScanner on: '--'.
	self assert: (parser match: string) = '-'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: '__'.
	self assert: (parser match: string) = '_'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: '4'.
	self assert: (parser match: string) = '4'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: 'p'.
	self assert: (parser match: string) = 'p'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: '&'.
	self assert: (parser match: string) = '&'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: ''''.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
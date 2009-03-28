tests
testCharacter
	| parser string |

	parser := scparser character.
	
	string := PEGMemoizedStringScanner on: '--'.
	self assert: (parser match: string) = '-'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: '__'.
	self assert: (parser match: string) = '_'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: '4'.
	self assert: (parser match: string) = '4'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: 'p'.
	self assert: (parser match: string) = 'p'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: '&'.
	self assert: (parser match: string) = '&'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: ''''.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
tests
testPrimary
	| parser string result |

	parser := scparser primary.

	" primary variable"
	string := PEGMemoizedStringScanner on: 'abc '.
 	result := (parser match: string).
	self assert: (result class = ASTVariable).
	self assert: (result name = 'abc').
	self assert: (string position = 3).
	
	" literal "
	string := PEGMemoizedStringScanner on: '3'.
 	result := (parser match: string).
	self assert: (result class = ASTNumber).
	self assert: (result number = '3').
	self assert: (result base = '10').
	self assert: (string position = 1).
tests
testBinaryMessageDefinition
	| parser string result |

	parser := scparser binaryMessageDefinition.
	
	string := PEGMemoizedStringScanner on: '+= a'.
	result := (parser match: string).
	self assert: (result class = ASTBinaryMessageDefinition).
	self assert: (result selector printString = '+=').
	self assert: (result parameter = 'a').
	self assert: (string position = 4).
	
	string := PEGMemoizedStringScanner on: '|= a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '-= abc d'.
	result := (parser match: string).
	self assert: (result class = ASTBinaryMessageDefinition).
	self assert: (result selector printString = '-=').
	self assert: (result parameter = 'abc').
	self assert: (string position = 6).
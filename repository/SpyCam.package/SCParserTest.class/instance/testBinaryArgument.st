tests
testBinaryArgument
	| parser string result |

	parser := scparser binaryMessageDefinition.
	
	string := PEGStringScanner on: '+= a'.
	result := (parser match: string).
	self assert: (result class = ASTBinaryMessageDefinition).
	self assert: (result selector printString = '+=').
	self assert: (result parameter class =  ASTVariable).
	self assert: (result parameter name asString = 'a').
	self assert: (string position = 4).
	
	string := PEGStringScanner on: '|= a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGStringScanner on: '-= abc d'.
	result := (parser match: string).
	self assert: (result class = ASTBinaryMessageDefinition).
	self assert: (result selector printString = '-=').
	self assert: (result parameter class =  ASTVariable).
	self assert: (result parameter name asString = 'abc').
	self assert: (string position = 6).
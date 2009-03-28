tests
testBinaryArgument
	| parser string result |

	parser := scparser binaryArgument.
	
	string := PEGMemoizedStringScanner on: '+= a'.
	result := (parser match: string).
	self assert: (result class = ASTBinarySelector).
	self assert: (result selector = '+=').
	self assert: (result argument = 'a').
	self assert: (string position = 4).
	
	string := PEGMemoizedStringScanner on: '|= a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '-= abc d'.
	result := (parser match: string).
	self assert: (result class = ASTBinarySelector).
	self assert: (result selector = '-=').
	self assert: (result argument = 'abc').
	self assert: (string position = 6).
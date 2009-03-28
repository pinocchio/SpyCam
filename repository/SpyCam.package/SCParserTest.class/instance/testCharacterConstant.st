tests
testCharacterConstant
	| parser string result |

	parser := scparser characterConstant.
	
	string := PEGMemoizedStringScanner on: 'a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '$_'.
	result := (parser match: string).
	self assert: result class = ASTCharacter.
	self assert: (result char = $_).
	self assert: (string position = 2).
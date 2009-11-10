tests
testCharacterConstant
	| parser string result |

	parser := scparser characterConstant.
	
	string := PEGStringScanner on: 'a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGStringScanner on: '$_'.
	result := (parser match: string).
	self assert: result class = ASTCharacter.
	self assert: (result char = $_).
	self assert: (string position = 2).
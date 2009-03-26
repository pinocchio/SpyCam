as yet unclassified
testCharacterConstant
	| parser string result |

	parser := SCParser characterConstant.
	
	string := PEGMemoizedStringScanner on: 'a'.
	self assert: (parser match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: '$_'.
	result := (parser match: string).
	self assert: result class = ASTCharacter.
	self assert: (result literal = $_).
	self assert: (string position = 2).
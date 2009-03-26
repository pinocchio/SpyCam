as yet unclassified
testSeparator
	| string |
	string := PEGMemoizedStringScanner on: ' a'.
	self assert: (PEGParser separator match: string) isNil not.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: ' 	 a'.
	self assert: (PEGParser separator match: string) isNil not.
	self assert: (string position = 3).
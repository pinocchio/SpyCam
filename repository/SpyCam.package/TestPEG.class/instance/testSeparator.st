tests
testSeparator
	| string |
	string := PEGStringScanner on: ' a'.
	self assert: (PEGParser separator match: string) isNil not.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: ' 	 a'.
	self assert: (PEGParser separator match: string) isNil not.
	self assert: (string position = 3).
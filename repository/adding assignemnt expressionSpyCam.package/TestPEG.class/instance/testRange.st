tests
testRange
	| string |
	string := PEGMemoizedStringScanner on: 'p'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'p'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: 'a'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'a'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: 'z'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'z'.
	self assert: (string position = 1).
	
	string := PEGMemoizedStringScanner on: ' '.
	self assert: ((PEGRange between: $a and: $z) match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGMemoizedStringScanner on: ''.
	self assert: ((PEGRange between: $a and: $z) match: string) isNil.
	self assert: (string position = 0).
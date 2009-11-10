tests
testRange
	| string |
	string := PEGStringScanner on: 'p'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'p'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: 'a'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'a'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: 'z'.
	self assert: ((PEGRange between: $a and: $z) match: string) = 'z'.
	self assert: (string position = 1).
	
	string := PEGStringScanner on: ' '.
	self assert: ((PEGRange between: $a and: $z) match: string) isNil.
	self assert: (string position = 0).
	
	string := PEGStringScanner on: ''.
	self assert: ((PEGRange between: $a and: $z) match: string) isNil.
	self assert: (string position = 0).
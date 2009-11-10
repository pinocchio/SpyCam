tests
testSequenceOmit
	| string exp1 exp2 seq1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asPEG omit: true.
	exp2 := 'b' asPEG.
	
	seq1 := exp1 && exp2.
	
	self assert: (seq1 match: string) = 'b'.
	self assert: string position = 2.
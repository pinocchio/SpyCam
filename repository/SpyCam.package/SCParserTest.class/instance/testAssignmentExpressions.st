tests
testAssignmentExpressions
	| parser string |
	parser := scparser assignmentExpressions.
	string := PEGStringScanner on: 'a :=  b:= c := d'.
	((parser match: string) collect: #name) asArray should = #('a' 'b' 'c').
	string position should = 15.
	string := PEGStringScanner on: ''.
	(parser match: string) should not be isNil
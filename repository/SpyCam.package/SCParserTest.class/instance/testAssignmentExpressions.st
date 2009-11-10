tests
testAssignmentExpressions
	| parser string |

	parser := scparser assignmentExpressions.
	
	string := PEGStringScanner on: 'a :=  b:= c := d'.
	self assert: ((parser match: string) collect: #name) asArray = #('a' 'b' 'c').
	self assert: (string position = 15).
	
	string := PEGStringScanner on: ''.
	self assert: (parser match: string) isNil not.
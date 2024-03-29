tests
testAssignmentExpressions
	| parser string |

	parser := scparser assignmentExpressions.
	
	string := PEGMemoizedStringScanner on: 'a :=  b:= c := d'.
	self assert: ((parser match: string) collect: #name) asArray = #('a' 'b' 'c').
	self assert: (string position = 15).
	
	string := PEGMemoizedStringScanner on: ''.
	self assert: (parser match: string) isNil not.
tests
testBlockArguments
	| string result var parser |

	parser := scparser blockArguments.
	
	string := PEGStringScanner on: ':abcd :def'.
	result := parser match: string.
	self assert: (string position = 10).
	self assert: (result class = OrderedCollection).
	self assert: (result size = 2).
	
	var := result at: 1.
	self assert: (var class = ASTVariable).
	self assert: (var name = 'abcd').

	var := result at: 2.
	self assert: (var class = ASTVariable).
	self assert: (var name = 'def').
	
	string := PEGStringScanner on: ' :  abcd:   def '.
	result := parser match: string.
	self assert: (string position = 16).
	self assert: (result class = OrderedCollection).
	self assert: (result size = 2).
	
	var := result first.
	self assert: (var class = ASTVariable).
	self assert: (var name = 'abcd').

	var := result at: 2.
	self assert: (var class = ASTVariable).
	self assert: (var name = 'def').
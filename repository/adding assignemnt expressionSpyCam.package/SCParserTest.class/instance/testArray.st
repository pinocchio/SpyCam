tests
testArray
	| parser string result |

	parser := scparser array.
	
	string := PEGMemoizedStringScanner on: '()'.
	result := (parser match: string).
	self assert: (result class = ASTArray).
	self assert: (result literals asArray = #()).
	
	string := PEGMemoizedStringScanner on: '(1 a #a ''b'' (4)))'.
	result := (parser match: string).
	self assert: (result class = ASTArray).
	self assert: (result literals size = 5).
	self assert: ((result literals at: 1) class = ASTNumber).
	self assert: ((result literals at: 1) number = '1').
	self assert: ((result literals at: 2) class = ASTSymbol).
	self assert: ((result literals at: 2) symbol = 'a').
	self assert: ((result literals at: 3) class = ASTSymbol).
	self assert: ((result literals at: 3) symbol = 'a').
	self assert: ((result literals at: 4) class = ASTString).
	self assert: ((result literals at: 4) string = 'b').
	self assert: ((result literals at: 5) class = ASTArray)
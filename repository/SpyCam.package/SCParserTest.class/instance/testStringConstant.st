tests
testStringConstant
	| parser string result |

	parser := scparser stringConstant.

	string := PEGMemoizedStringScanner on: '''abc'''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result string = 'abc').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc'''''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result string = 'abc').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc''''d'' '''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result string = 'abc''d').
	self assert: (string position = 8).
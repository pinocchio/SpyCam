tests
testStringConstant
	| parser string result |

	parser := SCParser stringConstant.

	string := PEGMemoizedStringScanner on: '''abc'''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result literal = 'abc').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc'''''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result literal = 'abc').
	self assert: (string position = 5).
	
	string := PEGMemoizedStringScanner on: '''abc''''d'' '''.
 	result := (parser match: string).
	self assert: (result class = ASTString).
	self assert: (result literal = 'abc''d').
	self assert: (string position = 8).
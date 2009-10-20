tests
testUnaryExpression
	| parser string result |

	parser := scparser unaryExpression.

	string := PEGMemoizedStringScanner on: 'abc def ghi '.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector = 'ghi').
	result := (result receiver).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector = 'def').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (string position = 12).
	
	string := PEGMemoizedStringScanner on: 'abc'.
 	self assert: (parser match: string) isNil.
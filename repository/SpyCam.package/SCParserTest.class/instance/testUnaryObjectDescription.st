tests
testUnaryObjectDescription
	| parser string result |

	parser := scparser unaryObjectDescription.

	" unary expression "
	string := PEGMemoizedStringScanner on: 'abc def ghi '.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector printString = 'ghi').
	result := (result receiver).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector printString = 'def').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (string position = 12).
	
	" primary "
	string := PEGMemoizedStringScanner on: '3'.
 	result := (parser match: string).
	self assert: (result class = ASTNumber).
	self assert: (result number = '3').
	self assert: (string position = 1).
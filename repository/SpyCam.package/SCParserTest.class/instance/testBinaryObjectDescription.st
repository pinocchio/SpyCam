tests
testBinaryObjectDescription
	| parser string result |

	parser := scparser binaryObjectDescription.

	" unary object description -> unary expression "
	string := PEGMemoizedStringScanner on: 'abc def ghi '.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector asString = 'ghi').
	result := (result receiver).
	self assert: (result class = ASTUnaryExpression).
	self assert: (result selector class = ASTUnarySelector).
	self assert: (result selector selector asString = 'def').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (string position = 12).
	
	" unary object description -> primary "
	string := PEGMemoizedStringScanner on: '3'.
 	result := (parser match: string).
	self assert: (result class = ASTNumber).
	self assert: (result number = '3').
	self assert: (string position = 1).
	
	" binary expression "
	string := PEGMemoizedStringScanner on: 'abc + ghi * c '.
 	result := (parser match: string).
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector printString = '*').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'c').
	result := result receiver.	
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector printString = '+').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'ghi').
	self assert: (string position = 13).
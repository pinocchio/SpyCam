tests
testMessageExpression
	| parser string result |

	parser := scparser messageExpression.

	string := PEGMemoizedStringScanner on: '2+4'.
 	result := (parser match: string).
	self assert: (result class = ASTBinaryExpression).

	string := PEGMemoizedStringScanner on: '2 a: 4 b: 3'.
 	result := (parser match: string).
	self assert: (result class = ASTMessageExpression).
	
	string := PEGMemoizedStringScanner on: '2 d'.
 	result := (parser match: string).
	self assert: (result class = ASTUnaryExpression).
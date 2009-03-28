tests
testCascadedMessageExpression
	| parser string result expression |

	parser := scparser cascadedMessageExpression.

	string := PEGMemoizedStringScanner on: '2+4; x: 3 b; d: 3 c: 4; x '.
 	result := (parser match: string).
	self assert: (result class = ASTMessageCascadeExpression).
	self assert: (result receiver class) = ASTBinaryExpression.
	
	self assert: (result cascades size = 3).
	
	expression := result cascades at: 1.
	self assert: (expression class = ASTMessageExpression).
	
	expression := result cascades at: 2.
	self assert: (expression class = ASTMessageExpression).
	
	expression := result cascades at: 3.
	self assert: (expression class = ASTUnaryExpression).
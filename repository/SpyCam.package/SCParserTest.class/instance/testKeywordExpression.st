tests
testKeywordExpression
	| parser string result arg |

	parser := scparser keywordExpression.

	string := PEGMemoizedStringScanner on: '2+4 abc: 1 def: 2+2 ghi: 3 b '.
 	result := (parser match: string).
	self assert: (result class = ASTMessageExpression).
	self assert: (result keywords asArray = #('abc' 'def' 'ghi')).
	arg := (result arguments at: 1).
	self assert: arg class = ASTNumber.
	arg := (result arguments at: 2).
	self assert: arg class = ASTBinaryExpression.
	arg := (result arguments at: 3).
	self assert: arg class = ASTUnaryExpression.
	self assert: (result receiver class) = ASTBinaryExpression.
	self assert: (string position = 29).
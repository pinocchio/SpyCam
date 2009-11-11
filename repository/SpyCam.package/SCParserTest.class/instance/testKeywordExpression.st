tests
testKeywordExpression
	| parser string result arg |

	parser := scparser keywordExpression.

	string := PEGStringScanner on: '2+4 abc: 1 def: 2+2 ghi: 3 b '.
 	result := (parser match: string).
	result class should = ASTMessageExpression.
	result keywords asArray should  = #('abc' 'def' 'ghi').
	result selector class should = ASTKeywordSelector.
	result selector printString should = 'abc:def:ghi:'.
	arg := result arguments first.
	self assert: arg class = ASTNumber.
	arg := (result arguments at: 2).
	self assert: arg class = ASTBinaryExpression.
	arg := (result arguments at: 3).
	self assert: arg class = ASTUnaryExpression.
	self assert: (result receiver class) = ASTBinaryExpression.
	self assert: (string position = 29).
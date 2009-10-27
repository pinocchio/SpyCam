tests
testMessageExpression
	| parser string result |

	parser := scparser messageExpression.

	string := PEGMemoizedStringScanner on: 'super+4'.
 	result := (parser match: string).
	result class should = ASTBinaryExpression.
	result receiver class should = ASTSuper.

	string := PEGMemoizedStringScanner on: 'self a: 4 b: 3'.
 	result := (parser match: string).
	result class should = ASTMessageExpression.
	result receiver class should = ASTSelf.
	
	string := PEGMemoizedStringScanner on: '2 d'.
 	result := (parser match: string).
	result class should = ASTUnaryExpression.
	result receiver class should = ASTNumber.
	result receiver asInteger should = 2.
	
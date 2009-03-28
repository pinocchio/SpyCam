tests
testBinaryExpression
	| parser string result |

	parser := scparser binaryObjectDescription.

	string := PEGMemoizedStringScanner on: 'abc + ghi '.
 	result := (parser match: string).
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector = '+').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'ghi').
	self assert: (string position = 9).
	
	" becomes (abc + ghi) * c "
	string := PEGMemoizedStringScanner on: 'abc + ghi * c '.
 	result := (parser match: string).
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector = '*').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'c').
	result := result receiver.	
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector = '+').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'ghi').
	self assert: (string position = 13).
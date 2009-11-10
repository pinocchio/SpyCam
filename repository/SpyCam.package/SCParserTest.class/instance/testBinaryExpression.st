tests
testBinaryExpression
	| parser string result |

	parser := scparser binaryObjectDescription.

	string := PEGStringScanner on: 'abc + ghi '.
 	result := (parser match: string).
	self assert: (result class = ASTBinaryExpression).
	self assert: (result selector printString = '+').
	self assert: (result receiver class = ASTVariable).
	self assert: (result receiver name = 'abc').
	self assert: (result argument class = ASTVariable).
	self assert: (result argument name = 'ghi').
	self assert: (string position = 9).
	
	" becomes (abc + ghi) * c "
	string := PEGStringScanner on: 'abc + ghi * c '.
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
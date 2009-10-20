tests
testSubExpression
	| parser string result |

	parser := scparser subExpression.

	string := PEGMemoizedStringScanner on: 'a:= b :=    c:= 2+4 abc: 1 def: 2+2 ghi: 3 b '.
 	self assert: (parser match: string) isNil.
	
	string := PEGMemoizedStringScanner on: 'a:= b :=    c:= 2+4 abc: 1 def: 2+2 ghi: 3 b. '.
 	result := (parser match: string).
	
	self assert: (result class = ASTAssignmentExpression).
	self assert: (result variable class = ASTVariable).
	self assert: (result variable name = 'a').
	
	result := (result expression).
	self assert: (result class = ASTAssignmentExpression).
	self assert: (result variable class = ASTVariable).
	self assert: (result variable name = 'b').
	
	result := (result expression).
	self assert: (result class = ASTAssignmentExpression).
	self assert: (result variable class = ASTVariable).
	self assert: (result variable name = 'c').
	
	self assert: (result expression class = ASTMessageExpression)
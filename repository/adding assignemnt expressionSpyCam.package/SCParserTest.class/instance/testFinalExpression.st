tests
testFinalExpression
	| parser string result |

	parser := scparser finalExpression.

	string := PEGMemoizedStringScanner on: 'a:= b :=    c:= 2+4 abc: 1 def: 2+2 ghi: 3 b '.
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
	
	self assert: (result expression class = ASTMessageExpression).
	
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
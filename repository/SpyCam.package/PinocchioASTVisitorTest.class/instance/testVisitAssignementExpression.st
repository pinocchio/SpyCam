running
testVisitAssignementExpression
	| assignementExpression result |
	assignementExpression := ASTAssignmentExpression new
		variable: (ASTVariable new
			name: (#a));
		expression: (ASTNumber new
			base: '10';
			number: '-13').
	result := visitor visit: assignementExpression.
	self assert: (result class = PinocchioAssign).
	self assert: (result variable class = PinocchioVariable).
	self assert: (result variable name = #a).
	self assert: (result expression class = PinocchioConstant).
	self assert: (result expression constant class = PinocchioSmallInt).
	self assert: (result expression constant int = -13).
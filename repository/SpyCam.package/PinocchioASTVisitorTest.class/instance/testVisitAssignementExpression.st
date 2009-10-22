running
testVisitAssignementExpression
	| result |
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	self assert: (result class = PinocchioAssign).
	self assert: (result variable class = PinocchioVariable).
	self assert: (result variable name = 'a').
	self assert: (result expression class = PinocchioConstant).
	self assert: (result expression constant class = PinocchioSmallInt).
	self assert: (result expression constant int = 13).
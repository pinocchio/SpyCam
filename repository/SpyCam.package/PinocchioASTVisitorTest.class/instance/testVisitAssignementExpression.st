running
testVisitAssignementExpression
	| result |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	result class should = PinocchioAssign.
	result variable class should = PinocchioLocalVariable.
	result variable name should = 'a'.
	result expression class should = PinocchioConstant.
	result expression constant class should = PinocchioSmallInt.
	result expression constant int should = 13.
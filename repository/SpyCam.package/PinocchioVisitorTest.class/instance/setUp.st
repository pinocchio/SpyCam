running
setUp
	super setUp.
	visitor := PinocchioASTVisitor new.
	scparser := SCParser new.
	parser := scparser expression.
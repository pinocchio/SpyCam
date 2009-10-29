as yet unclassified
setUp
	super setUp.
	visitor := PinocchioASTVisitor new.
	scparser := SCParser new.
	parser := scparser expression.
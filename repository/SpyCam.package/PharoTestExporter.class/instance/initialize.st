initialize-release
initialize
	super initialize.
	scparser := SCParser new.
	cdumper := PinocchioCDumper new.
	visitor := PinocchioASTVisitor new.
	testCaseClass := (PinocchioInternalVariable new uid: 'Test_Class').
	testCaseInstance := (PinocchioInternalVariable new uid: 'test_Class_Instance').
	self clear.
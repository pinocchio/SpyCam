initialize-release
initialize
	super initialize.
	scparser := SCParser new.
	cdumper := PCDumper new.
	visitor := PASTVisitor new.
	testCaseClass := (PInternalVariable new uid: 'Test_Class').
	testCaseInstance := (PInternalVariable new uid: 'test_Class_Instance').
	self clear.
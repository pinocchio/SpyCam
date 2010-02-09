exporting
createCFile
	stream := CrLfFileStream forceNewFileNamed: ('test/', self name, '.c').
	
	self createHeader.
	self createTestCases.
	self createTestSuite.
	
	stream close.
	
exporting
createCFile
	stream := CrLfFileStream forceNewFileNamed: (self sourcePath, 'test/lib/test/', self name, '.c').
	
	self createHeader.
	self createTestCases.
	self createTestSuite.
	
	stream close.
	
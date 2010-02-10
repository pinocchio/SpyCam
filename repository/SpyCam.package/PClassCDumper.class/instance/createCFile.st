exporting
createCFile.
	self assureExistenceOfPath: self sourcePath, '/lib/class'. 
	stream := CrLfFileStream forceNewFileNamed: (self sourcePath, '/lib/class/', self pclass name asString, '.c').
	
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	
	self createFooter.
	
	stream close.
	
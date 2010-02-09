exporting
createCFile.
	FileDirectory default assureExistenceOfPath: 'class'. 
	stream := CrLfFileStream forceNewFileNamed: ('class/', self pclass name asString, '.c').
	
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	self createFooter.
	
	stream close.
	
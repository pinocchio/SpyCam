helper
putNewInstance: anASTNode with: newInstanceString
	stream nextPutAll: anASTNode astType;
		nextPutAll: '_';
		nextPutAll: anASTNode astName;
		nextPutAll: ' ';
		nextPutAll: anASTNode uid;
		nextPutAll: ' = ';
		nextPutAll: newInstanceString;
		nextPutAll: ';'.
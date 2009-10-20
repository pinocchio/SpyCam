helper
putNewInstance: anASTNode with: newInstanceString
	stream nextPutAll: anASTNode astType;
		nextPutAll: '_';
		nextPutAll: anASTNode astType;
		nextPutAll: ' = ';
		nextPutAll: newInstanceString;
		nextPutAll: ';'.
helper
putNewInstance: anASTNode with: newInstanceString
	stream nextPutAll: 'Object ';
		nextPutAll: anASTNode uid;
		nextPutAll: ' = (Object)';
		nextPutAll: newInstanceString;
		nextPutAll: ';'.
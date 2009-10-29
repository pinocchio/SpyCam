helper
put: aPinocchioObject with: newInstanceString 
	stream
		nextPutAll: 'Object ';
		nextPutAll: aPinocchioObject uid;
		nextPutAll: ' = (Object)';
		nextPutAll: newInstanceString;
		nextPutAll: ';';
		cr.
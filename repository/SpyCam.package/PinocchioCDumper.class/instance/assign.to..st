convenience
assign: aString to: aPinocchioObject
	stream
		nextPutAll: 'Object ';
		nextPutAll: aPinocchioObject uid;
		nextPutAll: ' = ';
		nextPutAll: aString;
		nextPutAll: ';';
		cr.
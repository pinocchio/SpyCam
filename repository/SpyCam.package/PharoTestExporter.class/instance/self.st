exporting
self
	outStream
		nextPutAll: 'Object ';
		nextPutAll: ast uid asString;
		nextPutAll: ';';
		nextPutAll: String cr.
	^ ast uid asString , ' = ' , str , ';' , String cr
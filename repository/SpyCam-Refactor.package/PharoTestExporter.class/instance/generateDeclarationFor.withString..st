exporting
generateDeclarationFor: ast withString: str
	outStream
		nextPutAll: 'Object ';
		nextPutAll: ast uid asString;
		nextPutAll: ';'; cr.
	^ ast uid asString , ' = ' , str , ';' , String cr
		
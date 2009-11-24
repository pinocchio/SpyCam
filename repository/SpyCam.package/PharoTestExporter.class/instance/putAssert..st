convenience
putAssert: anAssertingSourceString 
	outStream nextPutAll: 'assert0(';
		nextPutAll: anAssertingSourceString;
		nextPutAll: ');'; cr.
printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' '.
	self name printOn: aStream.
	aStream nextPutAll: '@'.
	self index printOn: aStream.
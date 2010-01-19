printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' '.
	self symbol printOn: aStream .
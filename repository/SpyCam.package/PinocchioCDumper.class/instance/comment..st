convenience
comment: aString
	stream nextPutAll: '// ';
		nextPutAll: aString.
	self newline.
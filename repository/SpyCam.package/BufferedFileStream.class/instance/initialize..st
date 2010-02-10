initialization
initialize: aFileStream
	super initialize.
	buffer := WriteStream on: ' '.
	fileStream := aFileStream.
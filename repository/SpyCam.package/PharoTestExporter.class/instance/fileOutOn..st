exporting
fileOutOn: aFileName
	| outputStream |
	outputStream := CrLfFileStream newFileNamed: aFileName.
	outputStream nextPutAll: outStream contents.
	outputStream close.
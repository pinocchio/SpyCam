exporting
fileOutOn: aFileName
	| outputStream |
	outputStream := CrLfFileStream fileNamed: aFileName.
	outputStream nextPutAll: outStream contents.
	outputStream close.
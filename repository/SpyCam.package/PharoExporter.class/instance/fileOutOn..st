convenience
fileOutOn: aFileName
	| outputStream |
	cdumper clear;
		visit: root.
	outputStream := CrLfFileStream fileNamed: aFileName.
	cdumper printOn: outputStream.
	outputStream close.
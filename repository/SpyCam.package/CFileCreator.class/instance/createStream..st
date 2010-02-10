exporting
createStream: path
	"^ CrLfFileStream forceNewFileNamed: (self sourcePath, path)."
	^ BufferedFileStream forceNewFileNamed: (self sourcePath, path).
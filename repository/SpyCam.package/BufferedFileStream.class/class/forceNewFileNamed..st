as yet unclassified
forceNewFileNamed: fileName
	^ self basicNew initialize: (StandardFileStream forceNewFileNamed: fileName).
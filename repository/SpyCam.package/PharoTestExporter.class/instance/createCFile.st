exporting
createCFile
	stream := CrLfFileStream forceNewFileNamed: (self sourcePath, '/test/lib/lib.c').
	self include: 'test/lib/lib.h'.
	
	stream nextPutAll: 'void lib_test() {'; cr.
	
	self todo do: [ :pClass|
		stream 	nextPutAll: 'test_';
				nextPutAll: pClass name asString;
				nextPutAll: '();'; cr.
	].
	
	stream nextPutAll: '}'.
	
	stream close.
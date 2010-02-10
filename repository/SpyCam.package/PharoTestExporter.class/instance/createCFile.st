exporting
createCFile
	stream := CrLfFileStream forceNewFileNamed: ('PharoTest.c').
	self include: 'parser/PharoTest.h'.
	
	stream nextPutAll: 'void pharo_test() {'; cr.
	
	stream nextPutAll: 'init_Pharo();'; cr.
	
	self todo do: [ :pClass|
		stream 	nextPutAll: 'test_';
				nextPutAll: pClass name asString;
				nextPutAll: '();'; cr.
	].
	
	stream nextPutAll: '}'.
	
	stream close.
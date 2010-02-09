exporting
createCFile
	stream := CrLfFileStream forceNewFileNamed: ('PharoTest.c').
	
	stream nextPutAll: '#include <parser/PharoTest.h>;'; cr; cr.
	
	stream nextPutAll: 'void pharo_test() {'; cr.
	
	self todo do: [ :pClass|
		stream 	nextPutAll: 'test_';
				nextPutAll: pClass name asString;
				nextPutAll: '();'; cr.
	].
	
	stream nextPutAll: '}'.
	
	stream close.
exporting
createHFile
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: ('PharoTest.h').
	
	guardName := 'PHARO_TEST'.
	stream nextPutAll: '#ifndef '; nextPutAll: guardName; cr;
		nextPutAll: '#define '; nextPutAll: guardName; cr; cr;
		nextPutAll: '#include <pinocchio.h>'; cr;
		nextPutAll: '#include <parser/Pharo.h>'; cr; cr;
		nextPutAll: 'extern void pharo_test();'; cr; cr.
		
	self todo do: [ :pClass|
		stream nextPutAll: '#include <parser/test/';
			nextPutAll: pClass name asString;
			nextPutAll: '.h>'; cr.		
	].
	
	
	stream cr;
		nextPutAll: '#endif //'; 
		nextPutAll: guardName.
	
	stream close.
exporting
createHFile
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: ('test/', self name, '.h').
	
	guardName := 'PHARO_TEST_', self name asUppercase.
	
	stream nextPutAll: '#ifndef '; nextPutAll: guardName; cr;
		nextPutAll: '#define '; nextPutAll: guardName; cr; cr;
		nextPutAll: '#include <pinocchio.h>'; cr;
		nextPutAll: '#include <test/pinocchioTest.h>'; cr;
		nextPutAll: '#include <parser/Pharo.h>'; cr; cr;
		nextPutAll: 'extern void test_';
		nextPutAll: self name; 
		nextPutAll: '();'; cr; cr;
		nextPutAll: '#endif //'; 
		nextPutAll: guardName.
	stream close.
	
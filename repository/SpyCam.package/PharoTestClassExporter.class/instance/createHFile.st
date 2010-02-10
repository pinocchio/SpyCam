exporting
createHFile
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: ('test/', self name, '.h').
	
	guardName := 'PHARO_TEST_', self name asUppercase.
	self startGuard: guardName.
	
	self include: 'pinocchio.h'.
	self include: 'test/pinocchioTest.h'.
	self include: 'parser/Pharo.h'.
	
	stream nextPutAll: 'extern void test_';
		nextPutAll: self name; 
		nextPutAll: '();'; cr; cr.
		
	self endGuard: guardName.
	
	stream close.
	
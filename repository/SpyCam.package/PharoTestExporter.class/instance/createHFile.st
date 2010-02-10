exporting
createHFile
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: 'PharoTest.h'.
	guardName := 'PHARO_TEST'.
	self startGuard: guardName.
	
	self include: 'pinocchio.h'.
	self include: 'parser/Pharo.h'.
	
	stream nextPutAll: 'extern void pharo_test();'; cr; cr.
	
	self todo do:[ :pClass | 
		self include: 'parser/test/', pClass name asString, '.h'.
	].
	
	self endGuard: guardName.
	
	stream close
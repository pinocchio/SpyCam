exporting
createHFile
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: self sourcePath, '/test/lib/lib.h'.
	guardName := 'PINOCCHIO_LIB_TEST'.
	self startGuard: guardName.
	
	self include: 'pinocchio.h'.
	self include: 'lib/lib.h'.
	
	stream nextPutAll: 'extern void lib_test();'; cr; cr.
	
	self todo do:[ :pClass | 
		self include: 'lib/lib/test/', pClass name asString, '.h'.
	].
	
	self endGuard: guardName.
	
	stream close
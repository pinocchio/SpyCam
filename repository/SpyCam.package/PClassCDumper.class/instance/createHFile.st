exporting
createHFile 
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: ('class/', self pclass name asString, '.h').
	
	guardName := 'PHARO_', self pclass name asString asUppercase.
	
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	
	stream nextPutAll: 'extern void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods();'; cr; cr.
		
	self include: 'parser/Pharo.h'.
	self endGuard: guardName.
	
	stream close.
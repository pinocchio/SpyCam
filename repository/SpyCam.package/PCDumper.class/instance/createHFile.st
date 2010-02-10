exporting
createHFile
	|guardName|
	stream := CrLfFileStream forceNewFileNamed: 'Pharo.h'.
	
	guardName := 'PHARO'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream nextPutAll: 'extern void init_Pharo();'; cr; cr.
	
	self comment: 'GLOBALS ============================================='.
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].
	stream cr.
	self comment: 'INCLUDES ============================================='.
	
	self sortedClasses do: [ :pclass|
		self include: 'parser/class/',pclass name asString, '.h'.
	].

	self endGuard: guardName.
	stream close.
	
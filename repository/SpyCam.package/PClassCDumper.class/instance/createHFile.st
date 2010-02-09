exporting
createHFile 
	| guardName |
	stream := CrLfFileStream forceNewFileNamed: ('class/', self pclass name asString, '.h').
	
	guardName := 'PHARO_', self pclass name asString asUppercase.
	
	stream nextPutAll: '#ifndef '; nextPutAll: guardName; cr;
		nextPutAll: '#define '; nextPutAll: guardName; cr; cr;
		nextPutAll: '#include <pinocchio.h>'; cr; cr;
		nextPutAll: 'extern void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods();'; cr; cr;
		nextPutAll: '#include <parser/Pharo.h>'; cr; cr;
		nextPutAll: '#endif // '; nextPutAll: guardName.
		
	stream close.
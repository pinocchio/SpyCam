exporting
createHFile
	stream := CrLfFileStream forceNewFileNamed: 'Pharo.h'.
	
	stream 
		nextPutAll: '#ifndef PHARO'; cr;
		nextPutAll: '#define PHARO'; cr; cr;
		nextPutAll: '#include <pinocchio.h>'; cr; cr.
	
	self comment: 'GLOBALS ============================================='.
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].
	stream cr.
	self comment: 'INCLUDES ============================================='.
	
	self sortedClasses do: [ :pclass|
		stream nextPutAll: '#include <parser/class/';
			nextPutAll: pclass name asString;
			nextPutAll: '.h>;';cr.
	].

	stream cr; 
		nextPutAll: '#endif // PHARO'.
	stream close.
	
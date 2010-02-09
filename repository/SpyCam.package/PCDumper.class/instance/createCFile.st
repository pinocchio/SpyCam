exporting
createCFile
	| sourceFile |
	sourceFile := CrLfFileStream forceNewFileNamed: 'Pharo.c'.
	sourceFile nextPutAll: '#include <parser/Pharo.h>'; cr; cr.
	
	globals do: [ :global|
		sourceFile nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].

	sourceFile cr;
		nextPutAll: 'void init_Pharo() {'; cr.
	
	sourceFile nextPutAll: stream contents; cr.
	
	self sortedClasses do: [ :pclass|
		sourceFile nextPutAll: 'init_';
			nextPutAll: pclass name asString;
			nextPutAll: '_methods();'; cr.
	].
	sourceFile nextPutAll: '}'.
	
	sourceFile close.
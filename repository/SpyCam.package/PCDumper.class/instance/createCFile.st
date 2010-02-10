exporting
createCFile
	| codeStream |
	codeStream := stream.

	stream := CrLfFileStream forceNewFileNamed: 'Pharo.c'.
	self include: 'parser/Pharo.h'.
	
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].

	stream cr;
		nextPutAll: 'void init_Pharo() {'; cr.
	
	stream nextPutAll: codeStream contents; cr.
	
	self sortedClasses do: [ :pclass|
		stream nextPutAll: 'init_';
			nextPutAll: pclass name asString;
			nextPutAll: '_methods();'; cr.
	].
	stream nextPutAll: '}'.
	stream close.
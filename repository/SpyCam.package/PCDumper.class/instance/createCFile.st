exporting
createCFile
	| codeStream |
	codeStream := stream.

	stream := CrLfFileStream forceNewFileNamed: self sourcePath, '/lib/lib.c'.
	self include: 'lib/lib.h'.
	
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].

	stream cr;
		nextPutAll: 'void init_lib() {'; cr.
	
	stream nextPutAll: codeStream contents; cr.
	
	self sortedClasses do: [ :pclass|
		stream nextPutAll: 'init_';
			nextPutAll: pclass name asString;
			nextPutAll: '_methods();'; cr.
	].
	stream nextPutAll: '}'.
	stream close.
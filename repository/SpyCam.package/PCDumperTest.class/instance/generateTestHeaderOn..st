test-source-output
generateTestHeaderOn: outStream
	outStream nextPutAll: '// Auto generated Tests from PinocchioCDumperTest'; cr; cr;
		nextPutAll: 'Object Test_Class;'; cr.
	
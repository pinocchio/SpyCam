exporting
generateHeader
	outStream nextPutAll: '// Auto generated Tests from '; 
		nextPutAll: self exportClass name; cr; cr;
		nextPutAll: '// Test Object to put test methods in';
		nextPutAll: 'Object Test_Class;'; cr.
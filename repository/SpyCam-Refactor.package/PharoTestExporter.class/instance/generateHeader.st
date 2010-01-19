exporting
generateHeader
	outStream nextPutAll: '// Auto generated Tests from '; 
		nextPutAll: self exportClass name; cr; cr;
		nextPutAll: '// Test Object to put test methods in'; cr;
		nextPutAll: 'Type_Class Test_Class;'; cr;
		nextPutAll: 'Object test_Class_Instance;'; cr;
		nextPutAll: '// Test Method symbol'; cr;
		nextPutAll: 'Type_Symbol SMB_runTestCase;'; cr.
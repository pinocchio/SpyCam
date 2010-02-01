exporting
generateHeader
	outStream nextPutAll: '// Auto generated Tests from '; 
		nextPutAll: self exportClass name; cr; cr;
		nextPutAll: '// Test Object to put test methods in'; cr;
		nextPutAll: 'Type_Class ', testCaseClass uid,';'; cr;
		nextPutAll: 'Object ', testCaseInstance uid, ';'; cr;
		nextPutAll: '// Test Method symbol'; cr;
		nextPutAll: 'Type_Symbol ', self name, '_SMB_runTestCase;'; cr.
exporting
generateTestCaseFor: methodSelector
	| method astMethod |
	method := self extractMethod: methodSelector.
	
	self separator.
	outStream nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_';
		nextPutAll: methodSelector asString;
		nextPutAll: ')'; cr; cr.
		
	astMethod := self generateMethod: method.
	self generateMethodCallFor: astMethod.
	outStream cr; 
		nextPutAll: 'ASSERT_EMPTY_STACK'; cr;
		nextPutAll: '}'
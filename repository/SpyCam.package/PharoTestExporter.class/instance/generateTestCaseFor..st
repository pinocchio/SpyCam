exporting
generateTestCaseFor: methodSelector
	| method astMethod selector |
	method := self extractMethod: methodSelector.
	
	self separator.
	selector := self createSelectorFor: methodSelector.
	outStream nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_';
		nextPutAll: selector asString;
		nextPutAll: ')'; cr; cr.
		
	astMethod := self generateMethod: method.
	self generateMethodCallFor: astMethod.
	self generateAssertFor: astMethod of: method.
	outStream cr; 
		nextPutAll: 'ASSERT_EMPTY_STACK'; cr;
		nextPutAll: '}'
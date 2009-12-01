exporting
generateTestCaseFor: methodSelector
	| method astMethod selector |
	method := self extractMethod: methodSelector.
	
	self separator.
	selector := self createSelectorFor: methodSelector.
	outStream nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_';
		nextPutAll: selector asString;
		nextPutAll: ')'; cr.
	self generateMethodSourceStringFor: method.
	
	astMethod := self generateMethod: method.
	self generateMethodCallFor: astMethod of: method.
	self generateAssertFor: astMethod of: method.
	self assertEmptyStack.
	outStream nextPutAll: '}'
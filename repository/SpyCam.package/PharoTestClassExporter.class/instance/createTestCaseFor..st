exporting
createTestCaseFor: methodSelector
	| method astMethod selector |
	method := self extractMethod: methodSelector.
	
	self separator.
	selector := self createSelectorFor: methodSelector.
	stream nextPutAll: 'NEW_TEST(';
		nextPutAll: self name;
		nextPutAll: '_';
		nextPutAll: selector asString;
		nextPutAll: ')'; cr.
	self createMethodSourceStringFor: method.
	astMethod := self pclass methods at: method selector asPSymbol.
	self createMethodCallFor: astMethod of: method.
	self createAssertFor: astMethod of: method.
	stream nextPutAll: '}'
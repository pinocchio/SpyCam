exporting
generateTestSuite
	self separator.
	outStream nextPutAll: 'TEST_SUITE(';
		nextPutAll: 'AutoGenTest,'; cr;
		nextPutAll: '{'; cr.
	self generateTestClass.
	self generateTestClassInstance.
	self generateTestSymbol.
	selectorList do: [ :selector|
		outStream nextPutAll: '    RUN_TEST(';
			nextPutAll: 'AutoGenTest_';
			nextPutAll: selector asString ;
			nextPutAll: ');'; cr.
	].
	outStream nextPutAll: '})'
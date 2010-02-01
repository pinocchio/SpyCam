exporting
generateTestSuite
	self separator.
	outStream nextPutAll: 'TEST_SUITE(';
		nextPutAll: self name,','; cr;
		nextPutAll: '{'; cr.
	self generateTestClassInstance.
	outStream cr.
	selectorList do: [ :selector|
		outStream nextPutAll: '    RUN_TEST(';
			nextPutAll: self name;
			nextPutAll: '_';
			nextPutAll: selector asString ;
			nextPutAll: ');'; cr.
	].
	outStream nextPutAll: '})'
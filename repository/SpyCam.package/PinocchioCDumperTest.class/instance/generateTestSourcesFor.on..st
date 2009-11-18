test-source-output
generateTestSourcesFor: methodSelector on: outStream
	self putSeparatorOn: outStream.
	outStream nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_'; 
		nextPutAll: methodSelector asString;
		nextPutAll: ')'; cr; cr.
	[ self dumpSourcesFor: methodSelector on: outStream. ] on: Error do: [ :error|
		outStream nextPutAll: 'assert1(0, "Smalltalk Parsing failed: ';
			nextPutAll: error asString cEscaped;
			nextPutAll: '");'; cr;
			nextPutAll: '/*'; cr;
			nextPutAll: error signalerContext shortStack;
			nextPutAll: '*/'; cr.
	].
	outStream cr; nextPutAll: '}'.
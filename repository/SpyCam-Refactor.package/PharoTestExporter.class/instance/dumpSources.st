exporting
dumpSources
	self generateHeader.
	self generateTestClass.
	self generateTestCases.
	self generateTestSuite.
	outStream close
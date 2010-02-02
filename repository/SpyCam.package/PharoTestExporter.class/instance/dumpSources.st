exporting
dumpSources
	self generateHeader.
	self generateTestClass.
	self generateTestCases.
	self generateTestSetup.
	self generateTestSuite.
	outStream close
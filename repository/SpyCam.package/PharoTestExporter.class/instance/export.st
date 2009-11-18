exporting
export
	self generateHeader.
	self generateTestCases.
	self generateTestSuite.
	outStream close.
	^ outStream
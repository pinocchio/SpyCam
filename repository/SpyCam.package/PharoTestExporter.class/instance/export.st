exporting
export
	self clear.
	self generateHeader.
	self generateTestCases.
	self generateTestSuite.
	outStream close.
	^ outStream
exporting
generateTestCases
	self methods do: [:method|
		self generateTestCaseFor: method.
	]
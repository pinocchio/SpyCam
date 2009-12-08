exporting
generateTestCases
	"From now on create all C objects directly in scope"
	cdumper onAssignTo: nil.
	self methods do: [:method|
		self generateTestCaseFor: method.
	]
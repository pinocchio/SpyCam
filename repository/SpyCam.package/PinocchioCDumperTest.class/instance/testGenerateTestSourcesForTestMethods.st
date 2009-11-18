test-source-output
testGenerateTestSourcesForTestMethods
	| outStream testMethods |
	outStream := CrLfFileStream fileNamed: 'AutoGenTests.ci'.
	parser := scparser method.
	testMethods := self extractTestMethods.
	testMethods do: [ :methodSelector|
		self generateTestSourcesFor: methodSelector on: outStream.
	].
	self generateTestSuite: testMethods on: outStream.
	outStream close.
	
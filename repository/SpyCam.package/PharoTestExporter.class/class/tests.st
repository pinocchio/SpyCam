as yet unclassified
tests
	| tests |
	tests := OrderedCollection new.
	tests
		add: BridgeTest;
		add: SCParserTest.
	^ tests.
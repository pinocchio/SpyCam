tests
testComment
	| parser |
	parser := PEGParser named: 'COMMENT' parsing: scparser commentFormat.
	self assert: (parser parse: '"Test"') isNil not.
	self assert: (parser parse: '"Test') isNil.
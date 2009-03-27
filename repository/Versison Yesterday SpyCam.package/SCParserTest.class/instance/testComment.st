tests
testComment
	| parser |
	parser := PEGParser named: 'COMMENT' parsing: SCParser comment.
	self assert: (parser parse: '"Test"') isNil not.
	self assert: (parser parse: '"Test') isNil.
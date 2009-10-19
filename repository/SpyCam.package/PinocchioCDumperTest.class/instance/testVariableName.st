running
testVariableName
	| node |
	node := ASTString new.
	self assert: ((dumper variableName: node) equals: 'string0').
	self assert: ((dumper variableName: node) equals: 'string1').
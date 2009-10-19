running
testVariableName
	| node |
	node := ASTString new.
	self assert: ((dumper variableName: node) = 'string1').
	self assert: ((dumper variableName: node) = 'string2').
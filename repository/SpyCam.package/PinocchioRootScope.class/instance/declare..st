as yet unclassified
declare: anASTVariable
	decls
		at: anASTVariable name 
		ifAbsent: [ 
			decls at: anASTVariable name put: anASTVariable asPVariable.
			^self ].
	self error: 'Double declaration.'
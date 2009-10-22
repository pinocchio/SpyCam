as yet unclassified
lookup: anASTVariable
	^decls at: anASTVariable name ifAbsent: [self error: 'Undeclared variable.']
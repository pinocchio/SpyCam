accessing
lookup: anASTVariable
	^ decls at: anASTVariable name ifAbsent: [
		^ self class lookup: anASTVariable.
	]
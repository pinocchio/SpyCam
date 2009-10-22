accessing
lookup: anASTVariable
	^decls at: anASTVariable uid ifAbsent: [super lookup: anASTVariable ].
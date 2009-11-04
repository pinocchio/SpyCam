accessing
lookup: anASTVariable
	^ decls at: anASTVariable name ifAbsent: [
			self error: ('Undeclared variable "', anASTVariable name, '"')
	]
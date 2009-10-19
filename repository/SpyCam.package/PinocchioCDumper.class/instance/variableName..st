helper
variableName: anASTNode 
	variableIndex := variableIndex + 1.
	^ (((anASTNode class name 
			copyFrom: 4
			to: anASTNode class name size) asLowercase), variableIndex printString) asString
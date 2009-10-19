visitor
visitString: anASTString

	stream nextPutAll: 'Type_String ';
		nextPutAll: (self variableName: anASTString);
		nextPutAll: (' = new_Type_String(L"', (anASTString string), '");') asString;
		cr.
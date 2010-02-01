exporting
generateTestClassInstance
	outStream nextPutAll: '    ', self name, '_create_ast();'; cr;
		nextPutAll: '    ', testCaseClass uid,' =';
		nextPutAll: '(Type_Class)'; nextPutAll: pinocchioClass uid; nextPutAll: ';'; cr;
		nextPutAll: '    ', testCaseInstance uid,' =';
		nextPutAll: '(Object)new_AST_Constant((Object)instantiate((Type_Class)', testCaseClass uid,'));'; cr.
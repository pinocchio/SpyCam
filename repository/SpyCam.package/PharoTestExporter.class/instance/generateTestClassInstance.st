exporting
generateTestClassInstance
	outStream nextPutAll: '    create_ast();'; cr;
		nextPutAll: '    Test_Class = (Object)'; nextPutAll: pinocchioClass uid; nextPutAll: ';'; cr;
		nextPutAll: '    test_Class_Instance = (Object)new_AST_Constant((Object)instantiate((Type_Class)Test_Class));'; cr.
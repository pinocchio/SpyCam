exporting
generateTestClassInstance
	outStream nextPutAll: '    create_ast();'; cr;
		nextPutAll: '    Test_Class = new_Class_named((Object)Type_Object_Class, L"Test_Object", Type_Object_Class->type);'; cr;
		nextPutAll: '    test_Class_Instance = (Object)new_AST_Constant((Object)instantiate((Type_Class)Test_Class));'; cr.
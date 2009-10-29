running
testDumpAssign
	| result |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	dumper visit: result.
	self assert: (dumper printString withBlanksTrimmed = ('Object ', result variable uid,
		' = (Object)new_Type_Variable(L"a");', Character cr asString,
		'Object ', result expression constant uid, ' = (Object)new_Type_SmallInt(13);', Character cr asString,
		'Object ', result expression uid, ' = (Object)new_Type_Constant(', result expression constant uid, ');',
		Character cr asString, 'Object ', result uid, ' = (Object)new_AST_Assign(', result variable uid, ', ',
		result expression uid, ');')).
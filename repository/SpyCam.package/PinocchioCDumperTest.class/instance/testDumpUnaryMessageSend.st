running
testDumpUnaryMessageSend
	| ast result |
	ast := self ast: 'true not'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
		('Object ',ast receiver uid ,' = (Object)new_Type_Constant(true);', String cr,
		 'Object ', ast message uid,' = (Object)new_Type_Symbol(L"not");', String cr,
		 'Object ', ast uid,               ' = (Object)new_AST_Send(', 
												ast receiver uid,', ',
												ast message uid, ', ',
												'emptyASTArray);') 
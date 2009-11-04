running
testDumpUnaryMessageSend
	| ast result |
	ast := self ast: 'true not'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
		('Object ', ast uid,               ' = (Object)new_AST_Send(True, SMB_not',
												'(Type_Array)empty_Type_Array);') 
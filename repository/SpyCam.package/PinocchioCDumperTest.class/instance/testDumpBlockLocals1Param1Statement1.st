running
testDumpBlockLocals1Param1Statement1
	| ast result|
	ast := self ast: '[:a||b| 1]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
	('Object ', ast uid, ' = (Object)new_AST_Block_With(',
										'(Type_Array)empty_Type_Array, ',
										'(Type_Array)empty_Type_Array, ',
										'(Type_Array)empty_Type_Array);').
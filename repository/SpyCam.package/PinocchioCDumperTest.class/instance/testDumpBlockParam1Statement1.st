running
testDumpBlockParam1Statement1
	| ast result |
	ast := self ast: '[:a| 1]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
	('Object ', ast uid, ' = (Object)new_AST_Block_With(empty_Type_Array, ',
														'empty_Type_Array, ',
														'empty_Type_Array);').
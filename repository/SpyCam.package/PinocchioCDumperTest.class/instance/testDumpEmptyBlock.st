running
testDumpEmptyBlock
	| ast result |
	ast := self ast: '[]'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
	('Object ', ast uid, ' = (Object)new_AST_Block_With(empty_Type_Array, ',
														'empty_Type_Array, ',
														'empty_Type_Array);').
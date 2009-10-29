running
testDumpArray0
	| array |
	array := ASTArray new literals: #().
	dumper visit: array.
	dumper printString withBlanksTrimmed  should = 
		('Object ', array uid, ' = (Object)empty_Type_Array;')
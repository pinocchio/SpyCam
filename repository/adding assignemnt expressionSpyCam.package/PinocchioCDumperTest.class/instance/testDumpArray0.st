running
testDumpArray0
	| array |
	array := ASTArray new literals: #().
	dumper visit: array.
	self assert: (dumper printString withBlanksTrimmed  = 
		(('Object ', array uid, ' = (Object)empty_Type_Array;') asString)) 
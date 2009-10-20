running
testDumpArray0
	| array |
	array := ASTArray new literals: #().
	dumper visit: array.
	self assert: (dumper printString withBlanksTrimmed  = 
		(('Type_Array ', array uid, ' = empty_Type_Array;') asString)) 
running
testDumpArray1
	| array string |
	string := ASTString new string: 'abc'.
	array := ASTArray new literals: #(string).
	dumper visit: array.
	self assert: (dumper printString withBlanksTrimmed  = 
		(('Type_String ', string uid ,' = new Type_String(''abc'');\n',
		  'Type_Array ', array uid, ' = new_Type_Array(1, ', string uid, ');') asString)) 
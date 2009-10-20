running
testDumpArray1
	| array string |
	string := ASTString new string: 'abc'.
	array := ASTArray new literals: (Array with: string).
	dumper visit: array.
	self assert: (dumper printString withBlanksTrimmed =
		(('Type_String ', string uid ,' = new_Type_String(L"abc");', String cr,
		  'Type_Array ', array uid, ' = new_Type_Array_With(1, ', string uid, ');')))
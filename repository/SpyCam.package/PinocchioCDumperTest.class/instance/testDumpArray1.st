running
testDumpArray1
	| array string |
	string := ASTString new string: 'abc'.
	array := ASTArray new literals: (Array with: string).
	dumper visit: array.
	self assert: (dumper printString withBlanksTrimmed =
		(('Object ', string uid ,' = (Object)new_Type_String(L"abc");', String cr,
		  'Object ', array uid, ' = (Object)new_Type_Array_With(1, ', string uid, ');')))
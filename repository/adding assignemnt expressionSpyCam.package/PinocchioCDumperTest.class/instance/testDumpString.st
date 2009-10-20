running
testDumpString
	| string |
	string := ASTString new string: 'abc'.
	dumper visit: string.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', string uid,' = (Object)new_Type_String(L"abc");')) 
running
testDumpString
	| string result |
	string := ASTString new string: 'abc'.
	result := visitor visit: string.
	dumper visit: result.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', result uid,' = (Object)new_Type_String(L"abc");')) 
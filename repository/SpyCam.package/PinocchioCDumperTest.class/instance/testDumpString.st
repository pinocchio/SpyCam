running
testDumpString
	| string |
	string := ASTString new string: 'abc'.
	dumper visit: string.
	self assert: (dumper printString equals: 'Type_String str0 = new_Type_String(L"abc");') 
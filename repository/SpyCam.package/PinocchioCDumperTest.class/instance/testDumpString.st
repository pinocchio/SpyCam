running
testDumpString
	| string |
	string := ASTString new string: 'abc'.
	dumper visit: string.
	self assert: (dumper printString withBlanksTrimmed = 
				'Type_String string1 = new_Type_String(L"abc");') 
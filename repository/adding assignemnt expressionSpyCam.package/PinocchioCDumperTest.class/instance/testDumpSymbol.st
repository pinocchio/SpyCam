running
testDumpSymbol
	| symbol |
	symbol := ASTSymbol new symbol: 'at:put:'.
	dumper visit: symbol.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', symbol uid,' = (Object)new_Type_Symbol(L"at:put:");')) 
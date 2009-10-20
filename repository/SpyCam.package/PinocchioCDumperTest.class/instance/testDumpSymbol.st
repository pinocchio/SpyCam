running
testDumpSymbol
	| symbol |
	symbol := ASTSymbol new symbol: 'at:put:'.
	dumper visit: symbol.
	self assert: (dumper printString withBlanksTrimmed = 
				('Type_Symbol ', symbol uid,' = new_Type_Symbol(L"at:put:");')) 
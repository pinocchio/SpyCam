running
testDumpSymbol
	| symbol result |
	[^ nil] value.
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	dumper visit: result.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', result constant uid,' = (Object)new_Type_Symbol(L"at:put:");', Character cr asString,
				'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');'))
running
testDoubleVisit
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = 
		('Object ', result constant uid,' = (Object)new_Type_Symbol(L"at:put:");', String cr,
		 'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');').
	dumper visit: result.
	dumper printString withBlanksTrimmed should = 
		('Object ', result constant uid,' = (Object)new_Type_Symbol(L"at:put:");', String cr,
		 'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');')
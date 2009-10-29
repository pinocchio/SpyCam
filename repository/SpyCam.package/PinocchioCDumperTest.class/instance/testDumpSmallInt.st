running
testDumpSmallInt
	| number result |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	dumper visit: result.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', result constant uid,' = (Object)new_Type_SmallInt(-43);', Character cr asString,
				'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');')) 
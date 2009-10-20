running
testDumpNumber
	| number |
	number := ASTNumber new base: '10'; number: '-43'.
	dumper visit: number.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', number uid,' = (Object)new_Type_SmallInt(-43);')) 
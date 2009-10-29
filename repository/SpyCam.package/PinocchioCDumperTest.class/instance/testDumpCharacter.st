running
testDumpCharacter
	| character result|
	character := ASTCharacter new char: 'c'.
	result := visitor visit: character.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = 
		('Object ', result constant uid,' = (Object)new_Type_Character(L''c'');', String cr,
		'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');')
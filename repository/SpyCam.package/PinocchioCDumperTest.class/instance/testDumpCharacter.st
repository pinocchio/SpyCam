running
testDumpCharacter
	| character result|
	character := ASTCharacter new char: 'c'.
	result := visitor visit: character.
	dumper visit: result.
	self assert: (dumper printString withBlanksTrimmed = 
				('Object ', result constant uid,' = (Object)new_Type_Character(L''c'');', Character cr asString,
				'Object ', result uid,' = (Object)new_Type_Constant(', result constant uid,');')) 